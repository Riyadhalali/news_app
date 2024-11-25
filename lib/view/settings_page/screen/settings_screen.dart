import 'package:flutter/material.dart';
import 'package:news_app/core/const_data/app_image.dart';
import 'package:news_app/core/const_data/my_size.dart';
import 'package:news_app/view/settings_page/screen/widget/menu_settings_item.dart';
import 'package:responsive_kakapo/responsive_kakapo.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {}, icon: Image.asset(AppImage.backIcon)),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(AppImage.gridIcon),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(AppImage.notificationsIcon),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(AppImage.profileImage),
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          "ريم العلي",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'تعديل الملف الشخصي',
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            MenuSettingsItem(
              textButton: 'الخيارات',
              iconPath: AppImage.settingsIcon,
            ),
            SizedBox(
              height: 20.h,
            ),
            MenuSettingsItem(
              textButton: 'التنبيهات',
              iconPath: AppImage.notificationsIcon,
            ),
            SizedBox(
              height: 20.h,
            ),
            MenuSettingsItem(
              textButton: 'حول التطبيق',
              iconPath: AppImage.questionIcon,
            ),
            SizedBox(
              height: 20.h,
            ),
            MenuSettingsItem(
              textButton: 'تسجيل خروج',
              iconPath: AppImage.settingsIcon,
            )
          ],
        ),
      ),
    );
  }
}
