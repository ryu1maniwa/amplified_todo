import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'amplify_localizations_en.dart';
import 'amplify_localizations_es.dart';
import 'amplify_localizations_ja.dart';

/// Callers can lookup localized strings with an instance of AuthenticatorLocalizations
/// returned by `AuthenticatorLocalizations.of(context)`.
///
/// Applications need to include `AuthenticatorLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/amplify_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AuthenticatorLocalizations.localizationsDelegates,
///   supportedLocales: AuthenticatorLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the AuthenticatorLocalizations.supportedLocales
/// property.
abstract class AuthenticatorLocalizations {
  AuthenticatorLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AuthenticatorLocalizations of(BuildContext context) {
    return Localizations.of<AuthenticatorLocalizations>(context, AuthenticatorLocalizations)!;
  }

  static const LocalizationsDelegate<AuthenticatorLocalizations> delegate = _AuthenticatorLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
    Locale('ja')
  ];

  /// Label of the button to sign in the user.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// Label of the button to sign up the user.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get signUp;

  /// Label of button to confirm an action
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// Label of button to submit a form
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// Label of button to change a password
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get changePassword;

  /// No description provided for @sendVerificationCode.
  ///
  /// In en, this message translates to:
  /// **'Verification code will be sent'**
  String get sendVerificationCode;

  /// Label of button to resend a verification code to the user's device
  ///
  /// In en, this message translates to:
  /// **'Resend Code'**
  String get reSendVerificationCode;

  /// Label of button prompting user if they've not received or have misplaced a verification code we sent
  ///
  /// In en, this message translates to:
  /// **'Lost your code?'**
  String get lostCode;

  /// Hint text for the 'Go to Sign Up' button
  ///
  /// In en, this message translates to:
  /// **'No account?'**
  String get noAccount;

  /// Hint text for the 'Go to Sign In' button
  ///
  /// In en, this message translates to:
  /// **'Have an account?'**
  String get haveAccount;

  /// Hint text for the 'Reset Password' button
  ///
  /// In en, this message translates to:
  /// **'Forgot your password?'**
  String get forgotPassword;

  /// Label of button to confirm the reset of a user's password
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get confirmResetPassword;

  /// Label of button to verify a user's attribute, such as their email or phone number
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// Label of button to skip the current step or action.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// Label of button to sign out the user
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get signOut;

  /// Label of button to return to the previous step
  ///
  /// In en, this message translates to:
  /// **'Back to {previousStep, select, signUp{Sign Up} signIn{Sign In} confirmSignUp{Confirm Sign-up} confirmSignInMfa{Confirm Sign-in} confirmSignInNewPassword{Confirm Sign-in} sendCode{Send Code} resetPassword{Reset Password} verifyUser{Verify User} confirmVerifyUser{Confirm Verify User} other{ERROR}}'**
  String backTo(String previousStep);

  /// Label of button to sign in with a social provider
  ///
  /// In en, this message translates to:
  /// **'Sign In with {provider, select, google{Google} facebook{Facebook} amazon{Amazon} apple{Apple} other{ERROR}}'**
  String signInWith(String provider);

  /// Label of the us
  ///
  /// In en, this message translates to:
  /// **'United States'**
  String get us;

  /// Label of the dial code selector modal
  ///
  /// In en, this message translates to:
  /// **'Select country'**
  String get selectDialCode;

  /// Label of the username field
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// Label of the password field
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// Label of the password confirmation field
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get passwordConfirmation;

  /// Label of the email field
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// Label of the phone number field
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phone_number;

  /// Label of the verification code field
  ///
  /// In en, this message translates to:
  /// **'Verification Code'**
  String get verificationCode;

  /// Label of the new password field
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newPassword;

  /// Label of the new password confirmation field
  ///
  /// In en, this message translates to:
  /// **'Confirm New Password'**
  String get newPasswordConfirmation;

  /// A gendered message
  ///
  /// In en, this message translates to:
  /// **'{gender, select, male{male} female{female} other{other}}'**
  String gender(String gender, String provider);

  /// A message with a date parameter
  ///
  /// In en, this message translates to:
  /// **'Hello World on {date}'**
  String helloWorldOn(DateTime date);
}

class _AuthenticatorLocalizationsDelegate extends LocalizationsDelegate<AuthenticatorLocalizations> {
  const _AuthenticatorLocalizationsDelegate();

  @override
  Future<AuthenticatorLocalizations> load(Locale locale) {
    return SynchronousFuture<AuthenticatorLocalizations>(lookupAuthenticatorLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'es', 'ja'].contains(locale.languageCode);

  @override
  bool shouldReload(_AuthenticatorLocalizationsDelegate old) => false;
}

AuthenticatorLocalizations lookupAuthenticatorLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AuthenticatorLocalizationsEn();
    case 'es': return AuthenticatorLocalizationsEs();
    case 'ja': return AuthenticatorLocalizationsJa();
  }

  throw FlutterError(
    'AuthenticatorLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
