import 'package:flutter/material.dart';
import 'package:news_app/core/const_data/app_image.dart';
import 'package:news_app/core/const_data/my_size.dart';

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
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "   رياض العلي",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
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
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                child: Row(
                  children: [
                    Icon(Icons.settings),
                    SizedBox(
                      width: 10,
                    ),
                    Text("خيارات"),
                    Spacer(),
                    Icon(Icons.navigate_next)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                child: Row(
                  children: [
                    Icon(Icons.notifications),
                    SizedBox(
                      width: 10,
                    ),
                    Text("التنبيهات"),
                    Spacer(),
                    Icon(Icons.navigate_next)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.help),
                    SizedBox(
                      width: 10,
                    ),
                    Text("حول التطبيق"),
                    Spacer(),
                    Icon(Icons.navigate_next)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.settings),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "تسجيل خروج",
                      style: TextStyle(
                          fontSize: MySize.fontSizeMd,
                          fontWeight: FontWeight.normal),
                    ),
                    Spacer(),
                    Icon(Icons.navigate_next)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
