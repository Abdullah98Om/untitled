import 'package:flutter/material.dart';

import '../../../core/theme/app_color.dart';

class AddButtonWidget extends StatelessWidget {
  const AddButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 55,
      left: 0,
      right: 0,
      child: Transform.translate(
        offset: const Offset(0, 0),
        child: Container(
          width: 75,
          height: 75,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColor.primaryColor),
          child:
              const Icon(Icons.add, color: AppColor.backgroundColor, size: 30),
        ),
      ),
    );
  }
}
