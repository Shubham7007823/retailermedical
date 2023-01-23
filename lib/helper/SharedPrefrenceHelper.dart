import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SharedPrefernce{
  Future<bool> setAuthToken(String emsail) async{
    final pref=await SharedPreferences.getInstance();
 return pref.setString("Authemail",emsail);


}
  Future<bool> setAuthpass(String pass) async{
    final pref=await SharedPreferences.getInstance();
    return pref.setString("passs",pass);


  }
Future<String?> getAuth() async{
    final pref=await SharedPreferences.getInstance();
    return pref.getString("Authemail");
}
  Future<String?> getAuthpass() async{
    final pref=await SharedPreferences.getInstance();
    return pref.getString("passs");
  }
}