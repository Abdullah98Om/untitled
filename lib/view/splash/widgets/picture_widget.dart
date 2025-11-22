import 'package:flutter/material.dart';

import '../../../core/theme/app_color.dart';
import '../../../core/util/constant.dart';

class PictureWidget extends StatelessWidget {
  const PictureWidget(
      {super.key,
      required this.itemsList,
      required this.selected,
      required this.index});

  final List<Map<String, dynamic>> itemsList;
  final int selected, index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Stack(
        children: [
          SizedBox(
            height: 358,
            child: Transform.rotate(
                angle: index % 2 != 0 ? (90 * 3.1415926535 / 180) : 0,
                child: Image.asset(AppImage.splashImg1)),
          ),
          SizedBox(
              height: 358,
              child: Center(
                  child: Text(
                itemsList[index]["title"],
                style: TextStyle(
                    color: selected == index
                        ? Colors.white
                        : AppColor.primaryColor,
                    fontSize: 58.67,
                    fontWeight: FontWeight.bold),
              ))),
        ],
      ),
    );
  }
}
