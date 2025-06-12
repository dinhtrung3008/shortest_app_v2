// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get serverError => 'Cannot connect to the server';

  @override
  String get offline => 'Internet connection lost, please check your network';

  @override
  String get emailNotExist => 'Email does not exist';

  @override
  String get emailAlreadyInUse => 'Email is already in use';

  @override
  String get wrongPassword => 'Incorrect password';

  @override
  String get tooManyRequests =>
      'You have failed to log in multiple times, please try again after 30 minutes';

  @override
  String get unexpected => 'Unexpected error';

  @override
  String get wrongInput => 'Wrong input';

  @override
  String get loginSuccess => 'Login successfully';

  @override
  String get loginFailed => 'Login failed, try again';

  @override
  String get registerSuccess => 'Register successfully';

  @override
  String get registerFailed => 'Register failed, try again';

  @override
  String get vietnamese => 'Vietnamese';

  @override
  String get american => 'American';

  @override
  String get emptyPost => 'Post content cannot be empty';

  @override
  String get wrongPostId => 'Invalid post ID';

  @override
  String get postNotExist => 'Post does not exist';

  @override
  String get getAllPostFailed => 'Failed to retrieve posts';

  @override
  String get commentPostFailed => 'Failed to comment on post';

  @override
  String get creatPostFailed => 'Failed to create post';

  @override
  String get deletePostFailed => 'Failed to delete post';

  @override
  String get likePostFailed => 'Failed to like post';

  @override
  String get unLikePostFailed => 'Failed to unlike post';

  @override
  String get tokenExpired => 'Session expired, please login again';

  @override
  String get invalidToken => 'Invalid token';

  @override
  String get tokenNotProvided => 'Token not provided or expired';

  @override
  String get invalidUserIdInToken => 'Invalid user id in token';

  @override
  String get passwordLabel => 'Password';

  @override
  String get loginLabel => 'Login';

  @override
  String get registerLabel => 'Register';

  @override
  String get invalidEmail => 'Invalid email';

  @override
  String get createAccount => 'Create account';

  @override
  String get passwordAtLeast =>
      'The password must be at least 6 characters long';

  @override
  String get emailAddressLabel => 'Email address';

  @override
  String get fullNameLabel => 'Full name';

  @override
  String get enterFullName => 'Please enter full name';

  @override
  String get phoneNumberLabel => 'Phone number';

  @override
  String get enterPhoneNumber => 'Please enter phone number';

  @override
  String get addressLabel => 'Address';

  @override
  String get enterAddress => 'Please enter an address';

  @override
  String get confirmPasswordLabel => 'Confirm Password';

  @override
  String get confirmPasswordMustBeSameAsPassword =>
      'The confirmation password must match the password';

  @override
  String get genderLabel => 'Gender';

  @override
  String get selectGender => 'Please select a gender';

  @override
  String get male => 'Male';

  @override
  String get female => 'Female';

  @override
  String get other => 'Other';

  @override
  String get errorSessionExpired => 'Session has expired';

  @override
  String get errorServerError => 'Server error occurred';

  @override
  String get errorCacheError => 'Cache error occurred';

  @override
  String get errorNoConnection => 'No internet connection';

  @override
  String get errorUnexpected => 'An unexpected error occurred';
}
