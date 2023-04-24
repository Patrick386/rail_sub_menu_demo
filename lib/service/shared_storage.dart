import 'package:shared_preferences/shared_preferences.dart';

class SharedDisk {
  static late SharedPreferences run;

  static Future<void> init() async {
    run = await SharedPreferences.getInstance();
  }

  /// Main navigation rail index
  static Future<void> setNavigationRailIndex(int value) async {
    await run.setInt('railIndex', value);
  }

  static int getNavigationRailIndex(){
    int? index = run.getInt('railIndex');
    return index ?? 0;
  }

}
