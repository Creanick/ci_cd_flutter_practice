import 'package:ci_practice/app_env.dart';
import 'package:ci_practice/main_common.dart';

void main() async {
  await mainCommon(AppEnv(mode: AppEnvMode.prod));
}
