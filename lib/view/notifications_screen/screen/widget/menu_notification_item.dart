import 'package:flutter/material.dart';
import 'package:news_app/core/const_data/app_image.dart';
import 'package:news_app/core/const_data/my_size.dart';
import 'package:responsive_kakapo/responsive_kakapo.dart';

class MenuNotificationItemItem extends StatelessWidget {
  final String textButton;
  final String? iconPath;
  final bool? switchButton;

  final VoidCallback? onTap;

  const MenuNotificationItemItem({
    super.key,
    required this.textButton,
    this.iconPath,
    this.onTap,
    this.switchButton,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 10.w,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                textButton,
                style: const TextStyle(
                    fontSize: MySize.fontSizeMd, fontWeight: FontWeight.normal),
              ),
            ),
            const Spacer(),
            if (switchButton !=
                false) // to display the switch button if it is false it will be displayed
              Transform.scale(
                scale: 0.7,
                child: Switch(
                    value: true,
                    activeColor: Colors.black, // Thumb color when ON
                    //   inactiveThumbColor: Colors.black54, // Thumb color when OFF
                    activeTrackColor: Colors.black12, // Track color when ON
                    inactiveTrackColor: Colors.white, // Track color when OFF
                    onChanged: (value) {}),
              )
          ],
        ),
      ),
    );
  }
}
