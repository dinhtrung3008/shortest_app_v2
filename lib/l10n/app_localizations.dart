import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi'),
  ];

  /// No description provided for @serverError.
  ///
  /// In en, this message translates to:
  /// **'Cannot connect to the server'**
  String get serverError;

  /// No description provided for @offline.
  ///
  /// In en, this message translates to:
  /// **'Internet connection lost, please check your network'**
  String get offline;

  /// No description provided for @emailNotExist.
  ///
  /// In en, this message translates to:
  /// **'Email does not exist'**
  String get emailNotExist;

  /// No description provided for @emailAlreadyInUse.
  ///
  /// In en, this message translates to:
  /// **'Email is already in use'**
  String get emailAlreadyInUse;

  /// No description provided for @wrongPassword.
  ///
  /// In en, this message translates to:
  /// **'Incorrect password'**
  String get wrongPassword;

  /// No description provided for @tooManyRequests.
  ///
  /// In en, this message translates to:
  /// **'You have failed to log in multiple times, please try again after 30 minutes'**
  String get tooManyRequests;

  /// No description provided for @unexpected.
  ///
  /// In en, this message translates to:
  /// **'Unexpected error'**
  String get unexpected;

  /// No description provided for @wrongInput.
  ///
  /// In en, this message translates to:
  /// **'Wrong input'**
  String get wrongInput;

  /// No description provided for @loginSuccess.
  ///
  /// In en, this message translates to:
  /// **'Login successfully'**
  String get loginSuccess;

  /// No description provided for @loginFailed.
  ///
  /// In en, this message translates to:
  /// **'Login failed, try again'**
  String get loginFailed;

  /// No description provided for @registerSuccess.
  ///
  /// In en, this message translates to:
  /// **'Register successfully'**
  String get registerSuccess;

  /// No description provided for @registerFailed.
  ///
  /// In en, this message translates to:
  /// **'Register failed, try again'**
  String get registerFailed;

  /// No description provided for @vietnamese.
  ///
  /// In en, this message translates to:
  /// **'Vietnamese'**
  String get vietnamese;

  /// No description provided for @american.
  ///
  /// In en, this message translates to:
  /// **'American'**
  String get american;

  /// No description provided for @emptyPost.
  ///
  /// In en, this message translates to:
  /// **'Post content cannot be empty'**
  String get emptyPost;

  /// No description provided for @wrongPostId.
  ///
  /// In en, this message translates to:
  /// **'Invalid post ID'**
  String get wrongPostId;

  /// No description provided for @postNotExist.
  ///
  /// In en, this message translates to:
  /// **'Post does not exist'**
  String get postNotExist;

  /// No description provided for @getAllPostFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to retrieve posts'**
  String get getAllPostFailed;

  /// No description provided for @commentPostFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to comment on post'**
  String get commentPostFailed;

  /// No description provided for @creatPostFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to create post'**
  String get creatPostFailed;

  /// No description provided for @deletePostFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete post'**
  String get deletePostFailed;

  /// No description provided for @likePostFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to like post'**
  String get likePostFailed;

  /// No description provided for @unLikePostFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to unlike post'**
  String get unLikePostFailed;

  /// No description provided for @tokenExpired.
  ///
  /// In en, this message translates to:
  /// **'Session expired, please login again'**
  String get tokenExpired;

  /// No description provided for @invalidToken.
  ///
  /// In en, this message translates to:
  /// **'Invalid token'**
  String get invalidToken;

  /// No description provided for @tokenNotProvided.
  ///
  /// In en, this message translates to:
  /// **'Token not provided or expired'**
  String get tokenNotProvided;

  /// No description provided for @invalidUserIdInToken.
  ///
  /// In en, this message translates to:
  /// **'Invalid user id in token'**
  String get invalidUserIdInToken;

  /// No description provided for @passwordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordLabel;

  /// No description provided for @loginLabel.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginLabel;

  /// No description provided for @registerLabel.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get registerLabel;

  /// No description provided for @invalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Invalid email'**
  String get invalidEmail;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create account'**
  String get createAccount;

  /// No description provided for @passwordAtLeast.
  ///
  /// In en, this message translates to:
  /// **'The password must be at least 6 characters long'**
  String get passwordAtLeast;

  /// No description provided for @emailAddressLabel.
  ///
  /// In en, this message translates to:
  /// **'Email address'**
  String get emailAddressLabel;

  /// No description provided for @fullNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Full name'**
  String get fullNameLabel;

  /// No description provided for @enterFullName.
  ///
  /// In en, this message translates to:
  /// **'Please enter full name'**
  String get enterFullName;

  /// No description provided for @phoneNumberLabel.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phoneNumberLabel;

  /// No description provided for @enterPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter phone number'**
  String get enterPhoneNumber;

  /// No description provided for @addressLabel.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get addressLabel;

  /// No description provided for @enterAddress.
  ///
  /// In en, this message translates to:
  /// **'Please enter an address'**
  String get enterAddress;

  /// No description provided for @confirmPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPasswordLabel;

  /// No description provided for @confirmPasswordMustBeSameAsPassword.
  ///
  /// In en, this message translates to:
  /// **'The confirmation password must match the password'**
  String get confirmPasswordMustBeSameAsPassword;

  /// No description provided for @genderLabel.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get genderLabel;

  /// No description provided for @selectGender.
  ///
  /// In en, this message translates to:
  /// **'Please select a gender'**
  String get selectGender;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @other.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get other;

  /// No description provided for @errorSessionExpired.
  ///
  /// In en, this message translates to:
  /// **'Session has expired'**
  String get errorSessionExpired;

  /// No description provided for @errorServerError.
  ///
  /// In en, this message translates to:
  /// **'Server error occurred'**
  String get errorServerError;

  /// No description provided for @errorCacheError.
  ///
  /// In en, this message translates to:
  /// **'Cache error occurred'**
  String get errorCacheError;

  /// No description provided for @errorNoConnection.
  ///
  /// In en, this message translates to:
  /// **'No internet connection'**
  String get errorNoConnection;

  /// No description provided for @errorUnexpected.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred'**
  String get errorUnexpected;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'vi':
      return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
