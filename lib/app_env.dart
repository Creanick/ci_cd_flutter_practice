import 'package:flutter/foundation.dart';

enum AppEnvMode { dev, prod }

class AppEnv {
  final AppEnvMode mode;
  const AppEnv({@required this.mode});
}
