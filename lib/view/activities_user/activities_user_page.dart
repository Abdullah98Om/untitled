import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:untitled/core/theme/app_color.dart';
import '../post_detailes/widgets/activities_widget.dart';
import 'widgets/app_bar_widget.dart';
import 'widgets/center_image_widget.dart';
import 'widgets/time_widget.dart';

class ActivitiesUserPage extends StatelessWidget {
  const ActivitiesUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
        color: AppColor.backgroundColor.withOpacity(0.7),
        image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://static.sayidaty.net/styles/900_scale/public/2021-11/19fd.jpg")));
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: boxDecoration,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 94 * 0.5, sigmaY: 94 * 0.5),
              child: Container(
                padding: const EdgeInsets.only(left: 34, right: 34, top: 40),
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                child: const SingleChildScrollView(
                  child: Column(
                    children: [
                      AppBarWidget(),
                      SizedBox(height: 31),
                      TimeWidget(),
                      SizedBox(height: 26),
                      CenterImageWidget(),
                      SizedBox(height: 23),
                      ActivitiesWidget(index: 0),
                      SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
