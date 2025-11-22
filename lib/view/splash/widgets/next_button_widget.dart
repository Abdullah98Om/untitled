import 'package:flutter/material.dart';

import '../../../core/routers/routers_name.dart';
import '../../../core/theme/app_color.dart';

class NextButtonWidget extends StatelessWidget {
  const NextButtonWidget({
    super.key,
    required this.selected,
    required this.itemsList,
    required this.pageController,
  });

  final int selected;
  final List<Map<String, dynamic>> itemsList;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 94,
      height: 94,
      alignment: Alignment.center,
      child: Stack(
        children: [
          SizedBox(
            width: 94,
            height: 94,
            child: CircularProgressIndicator(
              strokeAlign: BorderSide.strokeAlignCenter,
              value: (selected + 1) / itemsList.length,
              strokeWidth: 2,
              backgroundColor: Colors.white.withOpacity(0.38),
              valueColor: const AlwaysStoppedAnimation(AppColor.primaryColor),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            width: 94,
            child: Center(
              child: InkWell(
                onTap: () {
                  if (selected == itemsList.length - 1) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, RoutesName.indexPage, (_) => false);
                  } else {
                    pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeOutSine);
                  }
                },
                child: Container(
                  height: 62,
                  width: 62,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColor.primaryColor),
                  child: const Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
