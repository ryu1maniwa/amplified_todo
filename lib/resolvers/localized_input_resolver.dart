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

class LocalizedInputResolver extends InputResolver {
  const LocalizedInputResolver();

  /// Override the title function
  /// Since this function handles the title for numerous fields,
  /// we recommend using a switch statement so that `super` can be called
  /// in the default case.
  @override
  String title(BuildContext context, InputField field) {
    switch (field) {
      case InputField.username:
        return AuthenticatorLocalizations.of(context).username;
      case InputField.email:
        return AuthenticatorLocalizations.of(context).email;
      case InputField.password:
        return AuthenticatorLocalizations.of(context).password;
      case InputField.passwordConfirmation:
        return AuthenticatorLocalizations.of(context).passwordConfirmation;
      case InputField.newPassword:
        return AuthenticatorLocalizations.of(context).newPassword;
      case InputField.verificationCode:
        return AuthenticatorLocalizations.of(context).verificationCode;
      // case InputField.phoneNumber:
      //   return AuthenticatorLocalizations.of(context).phoneNumber;
      // case InputField.givenName:
      //   return AuthenticatorLocalizations.of(context).givenName;
      // case InputField.familyName:
      //   return AuthenticatorLocalizations.of(context).familyName;
      // case InputField.middleName:
      //   return AuthenticatorLocalizations.of(context).middleName;
      // case InputField.preferredUsername:
      //   return AuthenticatorLocalizations.of(context).preferredUsername;
      // case InputField.gender:
      //   return AuthenticatorLocalizations.of(context).gender;
      // case InputField.birthdate:
      //   return AuthenticatorLocalizations.of(context).birthdate;
      // case InputField.customAuthChallenge:
      //   return AuthenticatorLocalizations.of(context).confirmSignInCustomAuth;
      default:
        return super.title(context, field);
    }
  }

  @override
  String hint(BuildContext context, InputField field) {
    final fieldName = title(context, field);
    return '$fieldNameを入力してください';
  }

  @override
  String confirmHint(BuildContext context, InputField field) {
    final fieldName = title(context, field);
    final replaceFieldName = fieldName.replaceFirst('(確認)', '');
    return '$replaceFieldNameを再度入力してください';
  }
}
