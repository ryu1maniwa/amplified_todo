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

class LocalizedTitleResolver extends TitleResolver {
  const LocalizedTitleResolver();

  /// The title for the sign in Widget.
  @override
  String signIn(BuildContext context) {
    return AuthenticatorLocalizations.of(context).signIn;
  }

  /// The title for the sign up Widget.
  @override
  String signUp(BuildContext context) {
    return AuthenticatorLocalizations.of(context).signUp;
  }

  /// The title for the confirm sign up Widget.
  @override
  String confirmSignUp(BuildContext context) {
    return AuthenticatorLocalizations.of(context).confirm;
  }

  /// The title for the reset password Widget.
  @override
  String resetPassword(BuildContext context) {
    return AuthenticatorLocalizations.of(context).sendVerificationCode;
  }

  /// The title for the confirm reset password Widget.
  @override
  String confirmResetPassword(BuildContext context) {
    return AuthenticatorLocalizations.of(context).confirmResetPassword;
  }
}
