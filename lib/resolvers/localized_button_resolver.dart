/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';
import 'package:amplified_todo/l10n/generated/amplify_localizations.dart';

/// Our custom button string resolver which calls into our localizations class.
class LocalizedButtonResolver extends ButtonResolver {
  const LocalizedButtonResolver();

  @override
  String changePassword(BuildContext context) {
    return AuthenticatorLocalizations.of(context).changePassword;
  }

  @override
  String confirm(BuildContext context) {
    return AuthenticatorLocalizations.of(context).confirm;
  }

  @override
  String lostCode(BuildContext context) {
    return AuthenticatorLocalizations.of(context).lostCode;
  }

  @override
  String sendCode(BuildContext context) {
    return AuthenticatorLocalizations.of(context).reSendVerificationCode;
  }

  @override
  String signIn(BuildContext context) {
    return AuthenticatorLocalizations.of(context).signIn;
  }

  @override
  String signout(BuildContext context) {
    return AuthenticatorLocalizations.of(context).signOut;
  }

  @override
  String signUp(BuildContext context) {
    return AuthenticatorLocalizations.of(context).signUp;
  }

  @override
  String submit(BuildContext context) {
    return AuthenticatorLocalizations.of(context).submit;
  }

  @override
  String verify(BuildContext context) {
    return AuthenticatorLocalizations.of(context).verify;
  }

  @override
  String signInWith(BuildContext context, AuthProvider provider) {
    return AuthenticatorLocalizations.of(context).signInWith(provider.name);
  }

  //   @override
  // String signInWith(BuildContext context, AuthProvider provider) {
  //   switch (provider) {
  //     case AuthProvider.apple:
  //       return 'Appleでログイン';
  //     case AuthProvider.amazon:
  //       return 'Amazonでログイン';
  //     case AuthProvider.facebook:
  //       return 'Facebookでログイン';
  //     case AuthProvider.google:
  //       return 'Googleでログイン';
  //     default:
  //       return 'Unknown provider'; // または適切なメッセージを返します。
  //   }
  // }

  @override
  String backTo(BuildContext context, AuthenticatorStep previousStep) {
    return AuthenticatorLocalizations.of(context).backTo(previousStep.name);
  }

  @override
  String forgotPassword(BuildContext context) {
    return AuthenticatorLocalizations.of(context).forgotPassword;
  }

  @override
  String haveAccount(BuildContext context) {
    return AuthenticatorLocalizations.of(context).haveAccount;
  }

  @override
  String noAccount(BuildContext context) {
    return AuthenticatorLocalizations.of(context).noAccount;
  }

  @override
  String confirmResetPassword(BuildContext context) {
    return AuthenticatorLocalizations.of(context).confirmResetPassword;
  }

  @override
  String skip(BuildContext context) {
    return AuthenticatorLocalizations.of(context).skip;
  }
}
