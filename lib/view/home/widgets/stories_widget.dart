import 'package:flutter/material.dart';

import '../../../core/theme/app_color.dart';
import '../../../core/util/constant.dart';
import '../../../core/widgets/drow_gradient_border_painter.dart';

class StoriesWidget extends StatelessWidget {
  const StoriesWidget({super.key, required this.peopleList});

  final List peopleList;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.only(left: 21, top: 5, bottom: 21),
      decoration: const BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(42),
              bottomRight: Radius.circular(42))),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            // add Story
            Container(
              margin: const EdgeInsets.only(right: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 84,
                    width: 86,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColor.backgroundColor.withOpacity(0.2),
                            width: 2),
                        // shape: BoxShape.circle
                        borderRadius: BorderRadius.circular(38)),
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 68,
                      width: 70,
                      decoration: BoxDecoration(
                          color: const Color(0xffF8F8F8).withOpacity(0.1),
                          // shape: BoxShape.circle
                          borderRadius: BorderRadius.circular(28)),
                      child: Image.asset(width: 32, AppImage.addIcon),
                    ),
                  ),
                  const SizedBox(height: 7),
                  const Text(
                    "Add Story",
                    style: TextStyle(
                        fontSize: 14,
                        color: AppColor.backgroundColor,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),

            // Stories
            for (var i in peopleList)
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                margin: const EdgeInsets.only(right: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomPaint(
                      painter: GradientBorderPainter(),
                      child: Container(
                        height: 84,
                        width: 86,
                        padding: const EdgeInsets.all(7),
                        decoration: const BoxDecoration(
                          color: AppColor.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(
                            child: Image.network(
                          width: 32,
                          i["image"],
                          fit: BoxFit.cover,
                        )),
                      ),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      "${i["name"]}",
                      style: const TextStyle(
                          fontSize: 14,
                          color: AppColor.backgroundColor,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
