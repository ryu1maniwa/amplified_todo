import 'package:amplify_authenticator/amplify_authenticator.dart';

import 'package:intl/intl.dart' as intl;

import 'amplify_localizations.dart';

/// The translations for Spanish Castilian (`es`).
class AuthenticatorLocalizationsEs extends AuthenticatorLocalizations {
  AuthenticatorLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get signIn => 'Iniciar Sesión';

  @override
  String get signUp => 'Crear una Cuenta';

  @override
  String get confirm => 'Confirmar';

  @override
  String get submit => 'Enviar';

  @override
  String get changePassword => 'Cambiar contraseña';

  @override
  String get sendVerificationCode => 'Verification code will be sent';

  @override
  String get reSendVerificationCode => 'Resend Code';

  @override
  String get lostCode => '¿Perdiste su código?';

  @override
  String get noAccount => '¿Sin cuenta?';

  @override
  String get haveAccount => '¿Tiene una cuenta?';

  @override
  String get forgotPassword => '¿Olvidase?';

  @override
  String get confirmResetPassword => 'Restablecer su contraseña';

  @override
  String get verify => 'Verificar';

  @override
  String get skip => 'Omitir';

  @override
  String get signOut => 'Salir';

  @override
  String backTo(String previousStep) {
    String _temp0 = intl.Intl.selectLogic(
      previousStep,
      {
        'signUp': 'registro',
        'signIn': 'inicio de sesión',
        'confirmSignUp': 'Confirmar registro',
        'confirmSignInMfa': 'Confirmar inicio de sesión',
        'confirmSignInNewPassword': 'Confirmar inicio de sesión',
        'sendCode': 'Enviar código',
        'resetPassword': 'Restablecer contraseña',
        'verifyUser': 'Verificar usuario',
        'confirmVerifyUser': 'Confirmar verificación de usuario',
        'other': 'ERROR',
      },
    );
    return 'Regresar al $_temp0';
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
    return 'Iniciar Sesión con $_temp0';
  }

  @override
  String get us => 'Estados Unidos';

  @override
  String get selectDialCode => 'seleccionar país';

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
