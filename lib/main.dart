import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rail_sub_menu/router/app_router.dart';
import 'package:rail_sub_menu/service/shared_storage.dart';
import 'logging.dart';


/// Submenu Demo in Navigation Rail
/// RailSubMenu M3
/// Terminal > dart pub run build_runner watch


void main() {
  setupLogger(); // App Log

  /// SharedPreferences init
  /// - navigation rail index caching
  SharedDisk.init();

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GoRouter router = ref.watch(routerProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter M3 Rail SubMenu Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
