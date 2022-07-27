import 'package:shared_preferences/shared_preferences.dart';

class my_prefrences{
  static SharedPreferences? pref;

  static Future init() async{
    pref=await SharedPreferences.getInstance();
  }

  static Future setLanguage(Language)async{
    await pref?.setString("language", Language);
  }

  String? getlanguage() {
    pref?.getString('language');
  }
}