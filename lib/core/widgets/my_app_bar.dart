import 'package:flutter/material.dart';
import '../theme/app_color.dart';

AppBar myAppBar(
    {required String title,
    bool center = true,
    List<Widget>? acts,
    Widget? leading}) {
  return AppBar(
    surfaceTintColor: Colors.transparent, // لتجنب تغير لون عند عمل scroll
    centerTitle: center,
    foregroundColor: AppColor.primaryColor,
    backgroundColor: AppColor.primaryColor,
    actions: acts,
    leading: leading,
    toolbarHeight: 80,
    shadowColor: Colors.transparent,
    elevation: 0,
    title: Text(
      title,
      style: const TextStyle(
          color: AppColor.primaryColor,
          fontWeight: FontWeight.w400,
          fontSize: 20),
    ),
  );
}
