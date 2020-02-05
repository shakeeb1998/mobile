//import '';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageHandler{
  SharedPreferences preferences;
  static final StorageHandler _singleton = new StorageHandler._internal();
  bool isInitialized = false;
  factory StorageHandler() {
    //    SharedPreferences preferences= await SharedPreferences.getInstance();

    return _singleton;
  }

  storeClasses({var timeTable,String email}){
//    jsonEncode(value)
    print("--------------");
//    print(timeTable);
    print("-------------");
    String timetable = json.encode(timeTable);
    this.preferences.setString(email, timetable);
  }

  getClasses({String email}){
    String timeTable=this.preferences.getString(email);
    return json.decode(timeTable);
  }

  storeTimetable(){}

  getTimetable(){}

  storeFriends(){}

  getFriends(){}

  getInstance({SharedPreferences prefrences})
  {
    this.preferences=prefrences;
    this.isInitialized=true;
  }




  StorageHandler._internal() {

  }


}