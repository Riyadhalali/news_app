import 'package:flutter/material.dart';
import 'package:news_app/core/const_data/my_size.dart';

class RadioListTileCustom extends StatelessWidget {
  final String option_1;
  final String option_2;
  final String option_3;

  const RadioListTileCustom(
      {super.key,
      required this.option_1,
      required this.option_2,
      required this.option_3});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile<int>(
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
          contentPadding: EdgeInsets.zero,
          activeColor: Colors.black,
          value: 1,
          groupValue: 1,
          onChanged: (value) {},
          title: Text(
            option_1,
            style: TextStyle(fontSize: MySize.fontSizeSm),
          ),
        ),
        RadioListTile(
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
          contentPadding: EdgeInsets.zero,
          activeColor: Colors.black,
          value: 1,
          groupValue: 2,
          onChanged: (value) {},
          title: Text(
            option_2,
            style: TextStyle(
              fontSize: MySize.fontSizeSm,
            ),
            textAlign: TextAlign.right,
          ),
        ),
        RadioListTile(
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
          contentPadding: EdgeInsets.zero,
          activeColor: Colors.black,
          value: 1,
          groupValue: 3,
          onChanged: (value) {},
          title: Text(
            option_3,
            style: TextStyle(fontSize: MySize.fontSizeSm),
          ),
        )
      ],
    );
  }
}
