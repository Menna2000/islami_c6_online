import 'package:shared_preferences/shared_preferences.dart';

class my_prefrences{
  static SharedPreferences? _pref;

  static Future init() async{
    if (_pref == null) {
      _pref = await SharedPreferences.getInstance();
    }
    //_pref=await SharedPreferences.getInstance();
  }

  static Future setLanguage(String Language)async{
    await _pref?.setString("language", Language);
  }

  static String? getlanguage() {
    return (_pref?.getString('language'));
  }
}