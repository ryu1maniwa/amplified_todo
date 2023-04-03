import 'package:amplify_authenticator/amplify_authenticator.dart';

import 'package:intl/intl.dart' as intl;

import 'amplify_localizations.dart';

/// The translations for Japanese (`ja`).
class AuthenticatorLocalizationsJa extends AuthenticatorLocalizations {
  AuthenticatorLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get signIn => 'ログイン';

  @override
  String get signUp => 'アカウント作成';

  @override
  String get confirm => '登録';

  @override
  String get submit => '送信';

  @override
  String get changePassword => 'パスワード変更';

  @override
  String get sendVerificationCode => '認証コードが送信されます';

  @override
  String get reSendVerificationCode => 'コードを再送信';

  @override
  String get lostCode => '認証コードが届かない場合';

  @override
  String get noAccount => 'アカウントがありませんか？';

  @override
  String get haveAccount => 'アカウントをお持ちですか？';

  @override
  String get forgotPassword => 'パスワードをお忘れですか？';

  @override
  String get confirmResetPassword => 'パスワードをリセット';

  @override
  String get verify => '確認';

  @override
  String get skip => 'スキップ';

  @override
  String get signOut => 'ログアウト';

  @override
  String backTo(String previousStep) {
    String _temp0 = intl.Intl.selectLogic(
      previousStep,
      {
        'signUp': 'アカウント作成',
        'signIn': 'ログイン',
        'confirmSignUp': 'サインアップ確認',
        'confirmSignInMfa': 'サインイン確認',
        'confirmSignInNewPassword': 'サインイン確認',
        'sendCode': 'コード送信',
        'resetPassword': 'パスワードリセット',
        'verifyUser': 'ユーザー確認',
        'confirmVerifyUser': 'ユーザー確認の確認',
        'other': 'エラー',
      },
    );
    return '$_temp0に戻る';
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
        'other': 'エラー',
      },
    );
    return '$_temp0でログイン';
  }

  @override
  String get us => 'アメリカ合衆国';

  @override
  String get selectDialCode => '国を選択';

  @override
  String get username => 'ユーザー名';

  @override
  String get password => 'パスワード';

  @override
  String get passwordConfirmation => 'パスワード(確認)';

  @override
  String get email => 'メールアドレス';

  @override
  String get phone_number => '電話番号';

  @override
  String get verificationCode => '認証コード';

  @override
  String get newPassword => '新しいパスワード';

  @override
  String get newPasswordConfirmation => '新しいパスワード(確認)';

  @override
  String gender(String gender, String provider) {
    String _temp0 = intl.Intl.selectLogic(
      provider,
      {
        'male': '男性',
        'female': '女性',
        'other': 'その他',
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
