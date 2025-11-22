import 'package:flutter/material.dart';
import 'package:untitled/core/theme/app_color.dart';
import 'package:untitled/core/util/constant.dart';

import 'core/routers/routers.dart';
import 'core/routers/routers_name.dart';
import 'view/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
          useMaterial3: true,
          fontFamily: enFont,
          scaffoldBackgroundColor: AppColor.backgroundColor),
      home: const MyHomePage(),
      onGenerateRoute: Routes.generateRoute,
      initialRoute: RoutesName.splash,
    );
  }
}
