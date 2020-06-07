import 'package:ci_practice/app_env.dart';
import 'package:ci_practice/helpers/config_reader.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';

Future<void> mainCommon(AppEnv appEnv) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.init();
  runApp(Provider.value(value: appEnv, child: MyApp()));
}
