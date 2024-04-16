import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/iphone_13_mini_eleven_screen/iphone_13_mini_eleven_screen.dart';
import '../presentation/iphone_13_mini_fifteen_screen/iphone_13_mini_fifteen_screen.dart';
import '../presentation/iphone_13_mini_fourteen_screen/iphone_13_mini_fourteen_screen.dart';
import '../presentation/iphone_13_mini_seventeen_screen/iphone_13_mini_seventeen_screen.dart';

class AppRoutes {
  static const String iphone13MiniElevenScreen =
      '/iphone_13_mini_eleven_screen';

  static const String iphone13MiniFourteenScreen =
      '/iphone_13_mini_fourteen_screen';

  static const String iphone13MiniSeventeenScreen =
      '/iphone_13_mini_seventeen_screen';

  static const String iphone13MiniFifteenScreen =
      '/iphone_13_mini_fifteen_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        iphone13MiniElevenScreen: Iphone13MiniElevenScreen.builder,
        iphone13MiniFourteenScreen: Iphone13MiniFourteenScreen.builder,
        iphone13MiniSeventeenScreen: Iphone13MiniSeventeenScreen.builder,
        iphone13MiniFifteenScreen: Iphone13MiniFifteenScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: Iphone13MiniElevenScreen.builder
      };
}
