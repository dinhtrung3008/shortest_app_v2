
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:shortest_app/infrastructure/data/client/dio_client.dart';
import 'package:shortest_app/infrastructure/data/remote/authentication/authentication_remote_service.dart';
import 'package:shortest_app/infrastructure/dtos/user_shortest/user_shortest_dto.dart';
import 'package:shortest_app/presentation/core/constants/collection_names.dart';
import 'package:shortest_app/presentation/core/constants/global_constants.dart';
import 'package:shortest_app/presentation/core/constants/user_constants.dart';

import 'widget_test.mocks.dart';

// Generate mocks
@GenerateMocks([IDioClient, FlutterSecureStorage, PocketBase, AuthStore])
void main() {
  group('AuthenticationRemoteServiceImpl', () {
    late AuthenticationRemoteServiceImpl authService;
    late MockIDioClient mockDioClient;
    late MockFlutterSecureStorage mockStorage;
    late MockPocketBase mockPocketBase;
    late MockAuthStore mockAuthStore;

    setUp(() {
      mockDioClient = MockIDioClient();
      mockStorage = MockFlutterSecureStorage();
      mockPocketBase = MockPocketBase();
      mockAuthStore = MockAuthStore();

      when(mockPocketBase.authStore).thenReturn(mockAuthStore);

      authService = AuthenticationRemoteServiceImpl(mockDioClient, mockStorage, mockPocketBase);
    });

    group('signInWithEmailAndPassword', () {
      late UserShortestDTO testUserDTO;
      late Map<String, dynamic> mockResponseData;
      late Response mockResponse;

      setUp(() {
        testUserDTO = UserShortestDTO(identity: 'test@shortest.co', password: 'test123456');

        // Create mock response data as raw JSON structure
        mockResponseData = {
          'token': 'token',
          'user': {
            'id': 'test-user-id',
            'identity': 'test@shortest.co',
            'password': 'test123456',
            // Add other required fields for UserShortestDTO here
            // Make sure this matches your UserShortestDTO structure
          },
        };

        mockResponse = Response(data: mockResponseData, statusCode: 200, requestOptions: RequestOptions(path: ''));
      });

      test('should successfully sign in and store user data', () async {
        // Arrange
        when(
          mockDioClient.postRequest(
            '/api/collections/${CollectionNames.usersCollection}/auth-with-password',
            bodyParams: testUserDTO.toJson(),
          ),
        ).thenAnswer((_) async => mockResponse);

        when(mockStorage.write(key: anyNamed('key'), value: anyNamed('value'))).thenAnswer((_) async {});

        // Act
        final result = await authService.signInWithEmailAndPassword(userDTO: testUserDTO);

        // Assert
        expect(result, equals(unit));

        // Verify API call
        verify(
          mockDioClient.postRequest(
            '/api/collections/${CollectionNames.usersCollection}/auth-with-password',
            bodyParams: testUserDTO.toJson(),
          ),
        ).called(1);

        // Verify storage operations
        verify(mockStorage.write(key: UserConstants.cachedUserKey, value: anyNamed('value'))).called(1);

        verify(mockStorage.write(key: GlobalConstants.accessToken, value: 'token')).called(1);

        verify(mockStorage.write(key: UserConstants.idField, value: 'test-user-id')).called(1);
      });
    });
  });
}
