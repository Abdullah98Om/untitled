import 'package:flutter/material.dart';

import '../../../core/theme/app_color.dart';

class ViewComments extends StatelessWidget {
  const ViewComments({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "View Comments",
      style: TextStyle(
          fontSize: 16,
          color: AppColor.backgroundColor,
          fontWeight: FontWeight.w400),
    );
  }
}
