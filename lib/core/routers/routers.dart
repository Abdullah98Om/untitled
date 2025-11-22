import 'package:flutter/material.dart';
import 'package:untitled/view/post_detailes/post_detailes_page.dart';
import 'package:untitled/view/splash/splash_page.dart';

import '../../view/activities_user/activities_user_page.dart';
import '../../view/index/index.dart';
import '../theme/app_color.dart';
import 'routers_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final routes = <String, WidgetBuilder>{
      RoutesName.indexPage: (_) => const IndexPage(),
      RoutesName.splash: (_) => const SplashPage(),
      RoutesName.postDetailes: (_) => const PostDetailesPage(),
      RoutesName.activitiesUser: (_) => const ActivitiesUserPage(),
    };

    final pageBuilder = routes[settings.name];
    if (pageBuilder == null) {
      return _errorRoute();
    }

    return MaterialPageRoute(builder: pageBuilder, settings: settings);
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Center(
          child: Text(
            'لا توجد صفحة ..',
            style: TextStyle(color: AppColor.primaryColor),
          ),
        ),
      ),
    );
  }
}
