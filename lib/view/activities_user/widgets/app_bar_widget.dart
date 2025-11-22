import 'package:flutter/material.dart';

import '../../post_detailes/widgets/profile_widget.dart';
import '../../post_detailes/widgets/save_icon_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileWidget(colorText: Colors.black, opacity: 0.4),
        SaveIconWidget()
      ],
    );
  }
}
