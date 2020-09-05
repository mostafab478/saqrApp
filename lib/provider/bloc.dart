import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bloc with ChangeNotifier{
ThemeData themeData;
Bloc(this.themeData);
getTheme()=>themeData;

setTheme(ThemeData theme){
  themeData = theme;
notifyListeners();

}
}