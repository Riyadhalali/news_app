import 'package:flutter/material.dart';
import 'package:news_app/core/const_data/app_colors.dart';
import 'package:news_app/core/const_data/my_size.dart';
import 'package:news_app/view/notifications_screen/screen/widget/menu_notification_options.dart';
import 'package:news_app/view/notifications_screen/screen/widget/menu_settings_item.dart';
import 'package:news_app/view/settings_options_screen/screen/widget/radio_list_tile_custom.dart';
import 'package:news_app/view/settings_screen/screen/widget/menu_settings_item.dart';
import 'package:responsive_kakapo/responsive_kakapo.dart';

class SettingsOptionsScreen extends StatelessWidget {
  const SettingsOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'الإعدادات',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'تعديل حجم الخط',
                      style: TextStyle(color: AppColor.grey),
                    ),
                  ),
                ],
              ),
              const MenuNotificationOptions(
                  textButton: 'اختر الحجم المناسب للخط:'),
              const RadioListTileCustom(
                  option_1: 'متوسط', option_2: 'كبير', option_3: 'كبير جداً'),
              const Divider(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'إعدادات التشغيل التلقائية',
                      style: TextStyle(color: AppColor.grey),
                    ),
                  ),
                ],
              ),
              const MenuNotificationOptions(
                  textButton: 'اختر الوضع الملائم لتشغيل الفيديوهات تلقائياً:'),
              const RadioListTileCustom(
                  option_1: 'على بيانات الهاتف وشبكات WiFi',
                  option_2: 'على شبكات WiFi فقط',
                  option_3: 'عدم تشغيل الفيديوهات تلقائياً'),
              const Divider(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'إعدادات الوضع الليلي',
                      style: TextStyle(color: AppColor.grey),
                    ),
                  ),
                ],
              ),
              const MenuNotificationOptions(
                  textButton: 'اختر إعدادات الوضع الليلي الملائمة:'),
              const RadioListTileCustom(
                  option_1: 'الوضع الليلي',
                  option_2: 'الوضع النهاري',
                  option_3: 'للقائي (حسب إعدادات الجهاز)'),
              const Divider(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'تعديل معلومات تسجيل الدخول',
                      style: TextStyle(color: AppColor.grey),
                    ),
                  ),
                ],
              ),
              MenuSettingsItemWithOutIcon(
                textButton: 'تعديل المصادر',
              ),
              MenuSettingsItemWithOutIcon(
                textButton: 'تعديل البلد',
              ),
              MenuSettingsItemWithOutIcon(
                textButton: 'تعديل نوع الأخبار',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
