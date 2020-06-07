import 'dart:convert';

import 'package:flutter/services.dart';

class ConfigReader {
  static const String _filePath = "config/app_config.json";
  static const String _INCREMENT_AMOUNT = "incrementAmount";
  static const String _STRIPE_API_KEY = "stripeApiKey";
  static Map<String, dynamic> _configData = {};
  static Future<void> init() async {
    final configString = await rootBundle.loadString(_filePath);
    _configData = jsonDecode(configString);
  }

  static int get incrementAmount {
    return _configData[_INCREMENT_AMOUNT];
  }

  static String get stripeApiKey {
    return _configData[_STRIPE_API_KEY];
  }
}
