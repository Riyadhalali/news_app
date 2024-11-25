import 'package:flutter/material.dart';
import 'package:news_app/core/const_data/app_colors.dart';
import 'package:news_app/view/notifications_screen/screen/widget/menu_notification_item.dart';
import 'package:news_app/view/notifications_screen/screen/widget/menu_notification_options.dart';
import 'package:news_app/view/notifications_screen/screen/widget/menu_settings_item.dart';
import 'package:news_app/view/settings_screen/screen/widget/menu_settings_item.dart';
import 'package:responsive_kakapo/responsive_kakapo.dart';

import '../../../core/const_data/app_image.dart';
import '../../../core/const_data/my_size.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'التنبيهات',
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Image.asset(AppImage.backIcon),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 27.h,
              ),
              const MenuNotificationItemItem(
                  textButton: 'تنبيهات الأخبار العاجلة'),
              TextButton(
                onPressed: () {},
                child: Text(
                  'اختر مصدر الأخبار العاجلة',
                  style: TextStyle(
                    color: AppColor.grey,
                    decoration:
                        TextDecoration.underline, // Adds underline to the text
                  ),
                ),
              ),
              const Divider(),
              const MenuNotificationItemItem(textButton: 'تنبيهات أهم الأخبار'),
              const Divider(),
              const MenuNotificationItemItem(
                  textButton: 'تنبيهات نتائج المباريات الرياضية'),
              const Divider(),
              const MenuNotificationItemItem(
                  textButton: 'التذكر بالإجابة على الاقتراع اليومي'),
              const Divider(),
              const MenuNotificationItemItem(
                textButton: 'أصوات التنبيهات',
                switchButton: false,
              ),
              const MenuNotificationItemItem(textButton: 'تفعيل الاهتزاز'),
              const MenuSettingsItemWithOutIcon(textButton: 'اختر نغمة الرنين'),
              const MenuNotificationOptions(
                  textButton: 'اختر طريقة عرض التنبيهات على شاشة القفل:'),
              SizedBox(
                height: 1.h,
              ),
              RadioListTile<int>(
                activeColor: Colors.black,
                value: 1,
                groupValue: 1,
                onChanged: (value) {},
                title: Text(
                  'عرض جميع الإشعارات ومحتوياتها',
                  style: TextStyle(fontSize: MySize.fontSizeSm),
                ),
              ),
              RadioListTile(
                activeColor: Colors.black,
                value: 1,
                groupValue: 2,
                onChanged: (value) {},
                title: Text(
                  'عرض جميع الإشعارات ولكن إخفاء محتوياتها',
                  style: TextStyle(
                    fontSize: MySize.fontSizeSm,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              RadioListTile(
                activeColor: Colors.black,
                value: 1,
                groupValue: 3,
                onChanged: (value) {},
                title: Text(
                  'عدم عرض الإشعارات على الإطلاق',
                  style: TextStyle(fontSize: MySize.fontSizeSm),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
