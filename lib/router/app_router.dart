import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rail_sub_menu/page/information_page.dart';
import 'package:rail_sub_menu/page/settings_page.dart';
import 'package:rail_sub_menu/page/sub_page1.dart';

import '../page/business_page.dart';
import '../page/home_page.dart';
import '../page/home_rail.dart';
import '../page/sub_page2.dart';
import '../page/sub_page3.dart';

abstract class AppRoutes {
  static String get home => '/';

  static String get settings => '/settings';
  static String get business => '/business';
  static String get information => '/information';

  static String get setting_subpage1 => 'sub_page1';
  static String get setting_subpage1_path => '/settings/sub_page1';
  static String get setting_subpage2 => 'sub_page2';
  static String get setting_subpage2_path => '/settings/sub_page2';
  static String get setting_subpage3 => 'settings/sub_page3';

  static String get business_subpage1 => 'business_sub_page1';
  static String get business_subpage1_path => '/business/business_sub_page1';
  static String get business_subpage2 => 'business_sub_page2';
  static String get business_subpage2_path => '/business/business_sub_page2';
  static String get business_subpage3 => 'business_sub_page3';
  static String get business_subpage3_path => '/business/business_sub_page3';
}

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'rootNavigator');
final GlobalKey<NavigatorState> _shellNavigatorKey =
GlobalKey<NavigatorState>(debugLabel: 'shellNavigator');
final Provider<GoRouter> routerProvider =
    Provider<GoRouter>((ProviderRef<GoRouter> ref) {
  /// The route configuration.
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRoutes.home,
    routes: <RouteBase>[
      /// Root page
      GoRoute(
        path: AppRoutes.home,
        builder: (BuildContext context, GoRouterState state) {
          return const MyHomePage();
        },
      ),

      /// Rail ShellRoute
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return HomeMenuRail(child: child);
        },
        routes: <RouteBase>[
          /// Start page
          GoRoute(
            path: AppRoutes.settings,
            builder: (BuildContext context, GoRouterState state) {
              return const SettingPage();
            },
            routes: [
              GoRoute(

                  path: AppRoutes.setting_subpage1,
                  builder: (BuildContext context, GoRouterState state) {
                    return SubPage1();
                  }),
              GoRoute(
                  path:  AppRoutes.setting_subpage2,
                  builder: (BuildContext context, GoRouterState state) {
                    return SubPage2();
                  }),
              GoRoute(
                  path:  AppRoutes.setting_subpage3,
                  builder: (BuildContext context, GoRouterState state) {
                    return SubPage3();
                  }),
            ],
          ),
          GoRoute(
            path: AppRoutes.information,
            builder: (BuildContext context, GoRouterState state) {
              return const InformationPage();
            },
          ),
          GoRoute(

            path: AppRoutes.business,
            builder: (BuildContext context, GoRouterState state) {
              return const BusinessPage();
            },
            routes: [
              GoRoute(
                  path:  AppRoutes.business_subpage1,
                  builder: (BuildContext context, GoRouterState state) {
                    return SubPage1();
                  }),
              GoRoute(
                  path:  AppRoutes.business_subpage2,
                  builder: (BuildContext context, GoRouterState state) {
                    return SubPage2();
                  }),
              GoRoute(
                  path:  AppRoutes.business_subpage3,
                  builder: (BuildContext context, GoRouterState state) {
                    return SubPage3();
                  }),
            ],
          ),
        ],
      ),

    ],
  );
});
