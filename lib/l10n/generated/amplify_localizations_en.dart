import 'package:amplify_authenticator/amplify_authenticator.dart';

import 'package:intl/intl.dart' as intl;

import 'amplify_localizations.dart';

/// The translations for English (`en`).
class AuthenticatorLocalizationsEn extends AuthenticatorLocalizations {
  AuthenticatorLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get signIn => 'Sign In';

  @override
  String get signUp => 'Create Account';

  @override
  String get confirm => 'Confirm';

  @override
  String get submit => 'Submit';

  @override
  String get changePassword => 'Change Password';

  @override
  String get sendVerificationCode => 'Verification code will be sent';

  @override
  String get reSendVerificationCode => 'Resend Code';

  @override
  String get lostCode => 'Lost your code?';

  @override
  String get noAccount => 'No account?';

  @override
  String get haveAccount => 'Have an account?';

  @override
  String get forgotPassword => 'Forgot your password?';

  @override
  String get confirmResetPassword => 'Reset Password';

  @override
  String get verify => 'Verify';

  @override
  String get skip => 'Skip';

  @override
  String get signOut => 'Sign Out';

  @override
  String backTo(String previousStep) {
    String _temp0 = intl.Intl.selectLogic(
      previousStep,
      {
        'signUp': 'Sign Up',
        'signIn': 'Sign In',
        'confirmSignUp': 'Confirm Sign-up',
        'confirmSignInMfa': 'Confirm Sign-in',
        'confirmSignInNewPassword': 'Confirm Sign-in',
        'sendCode': 'Send Code',
        'resetPassword': 'Reset Password',
        'verifyUser': 'Verify User',
        'confirmVerifyUser': 'Confirm Verify User',
        'other': 'ERROR',
      },
    );
    return 'Back to $_temp0';
  }

  @override
  String signInWith(String provider) {
    String _temp0 = intl.Intl.selectLogic(
      provider,
      {
        'google': 'Google',
        'facebook': 'Facebook',
        'amazon': 'Amazon',
        'apple': 'Apple',
        'other': 'ERROR',
      },
    );
    return 'Sign In with $_temp0';
  }

  @override
  String get us => 'United States';

  @override
  String get selectDialCode => 'Select country';

  @override
  String get username => 'Username';

  @override
  String get password => 'Password';

  @override
  String get passwordConfirmation => 'Confirm Password';

  @override
  String get email => 'Email';

  @override
  String get phone_number => 'Phone Number';

  @override
  String get verificationCode => 'Verification Code';

  @override
  String get newPassword => 'New Password';

  @override
  String get newPasswordConfirmation => 'Confirm New Password';

  @override
  String gender(String gender, String provider) {
    String _temp0 = intl.Intl.selectLogic(
      gender,
      {
        'male': 'male',
        'female': 'female',
        'other': 'other',
      },
    );
    return '$_temp0';
  }

  @override
  String helloWorldOn(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMd(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'Hello World on $dateString';
  }
}
