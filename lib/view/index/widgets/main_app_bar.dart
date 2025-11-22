import 'package:flutter/material.dart';
import 'package:untitled/core/util/constant.dart';

import '../../../core/theme/app_color.dart';
import '../../../core/widgets/my_app_bar.dart';

AppBar mainAppBar(BuildContext context, int selectedIndex) {
  return myAppBar(
      title: "",
      center: true,
      acts: [
        Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Container(
            height: 55,
            decoration: BoxDecoration(
                color: AppColor.backgroundColor.withOpacity(0.06),
                borderRadius: BorderRadius.circular(28)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 55,
                    width: 73,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(28)),
                    child: Image.asset(AppImage.notificationIcon)),
                Container(
                    height: 55,
                    width: 73,
                    decoration: BoxDecoration(
                        color: AppColor.backgroundColor,
                        borderRadius: BorderRadius.circular(28)),
                    child: Image.asset(AppImage.smsNotificationIcon)),
              ],
            ),
          ),
        )
      ],
      leading: Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Image.asset(width: 23, height: 23, AppImage.menueIcon),
      ));
}
