import 'package:flutter/material.dart';
import 'package:islami_c6_online/prefrences/my_prefrences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProviderApp extends ChangeNotifier{

  String AppLanguage=my_prefrences().getlanguage()?? 'en';
  ThemeMode themeMode=ThemeMode.light;

  void changeLanguage(String languageCode){
    AppLanguage=languageCode;
    notifyListeners();
  }

  void changeTheme(ThemeMode theme){
    themeMode=theme;
    notifyListeners();
  }

  String getBackground(){
    if(themeMode==ThemeMode.light){
      return 'assets/images/main_bg.png';
    }else{
      return 'assets/images/main_dark_bg.png';
    }

  }
}