import 'dart:io';

import '../constants/global_constants.dart';

class ConvertFile {
  static String convertFilesToString({
    required String collectionIdOrName,
    required String recordId,
    required String fileName,
  }) {
    final baseUrl = Platform.isAndroid ? GlobalConstants.pockerBaseUrlAndroid : GlobalConstants.pockerBaseUrlIOS;
    return '$baseUrl/api/files/$collectionIdOrName/$recordId/$fileName';
  }
}
