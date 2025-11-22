import 'package:flutter/material.dart';

import '../../../core/theme/app_color.dart';
import 'profile_widget.dart';
import 'save_icon_widget.dart';

class AppBarPostDetailWidget extends StatelessWidget {
  const AppBarPostDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileWidget(colorText: AppColor.backgroundColor),
        SaveIconWidget(),
      ],
    );
  }
}
