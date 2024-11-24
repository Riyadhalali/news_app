import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationService extends Translations {
  // Supported languages
  static final List<Locale> supportedLocales = [
    Locale('en', 'US'),
    Locale('ar', 'SY'),
  ];

  // Key-value pairs for translations
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'welcome': 'Welcome',
          'hello': 'Hello',
          'change_language': 'Change Language',
        },
        'ar_SY': {
          'welcome': 'أهلاً وسهلاً',
          'hello': 'مرحباً',
          'change_language': 'تغيير اللغة',
        },
      };
}

// controller to change the language
class LanguageController extends GetxController {
  // Method to change the language
  void changeLanguage(Locale locale) {
    Get.updateLocale(locale);
  }
}
