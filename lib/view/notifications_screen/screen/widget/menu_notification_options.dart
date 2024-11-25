import 'package:flutter/material.dart';
import 'package:news_app/core/const_data/app_image.dart';
import 'package:news_app/core/const_data/my_size.dart';
import 'package:responsive_kakapo/responsive_kakapo.dart';

class MenuNotificationOptions extends StatelessWidget {
  final String textButton;

  final VoidCallback? onTap;

  const MenuNotificationOptions(
      {super.key, required this.textButton, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 5.w,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    textButton,
                    style: TextStyle(
                        fontSize: MySize.fontSizeMd,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
