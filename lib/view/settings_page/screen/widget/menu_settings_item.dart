import 'package:flutter/material.dart';
import 'package:news_app/core/const_data/app_image.dart';
import 'package:news_app/core/const_data/my_size.dart';
import 'package:responsive_kakapo/responsive_kakapo.dart';

class MenuSettingsItem extends StatelessWidget {
  final String textButton;
  final String iconPath;
  final VoidCallback? onTap;

  const MenuSettingsItem(
      {super.key,
      required this.textButton,
      required this.iconPath,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: onTap,
              icon: Image.asset(iconPath),
            ),
            SizedBox(
              width: 10.w,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                textButton,
                style: TextStyle(
                    fontSize: MySize.fontSizeMd, fontWeight: FontWeight.normal),
              ),
            ),
            Spacer(),
            InkWell(
              child: Icon(Icons.navigate_next),
              onTap: onTap,
            )
          ],
        ),
      ),
    );
  }
}
