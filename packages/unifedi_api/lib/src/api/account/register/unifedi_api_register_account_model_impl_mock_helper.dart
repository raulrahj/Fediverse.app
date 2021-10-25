import 'unifedi_api_register_account_model_impl.dart';

// ignore_for_file: no-magic-number
abstract class UnifediApiRegisterAccountMockHelper {
  static UnifediApiRegisterAccount generate({
    required String seed,
  }) =>
      UnifediApiRegisterAccount(
        username: seed + 'username',
        email: seed + 'email',
        password: seed + 'password',
        agreement: seed.hashCode % 2 == 0,
        locale: seed + 'locale',
        reason: seed + 'reason',
        captchaToken: seed + 'captchaToken',
        captchaAnswerData: seed + 'captchaAnswerData',
        captchaSolution: seed + 'captchaSolution',
        fullName: seed + 'fullName',
        bio: seed + 'bio',
        inviteToken: seed + 'inviteToken',
      );
}
