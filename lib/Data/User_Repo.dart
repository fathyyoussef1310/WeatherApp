import 'dart:convert';

import 'package:http/http.dart' as Http;

class weatherRepo{
  Future<Map<String,dynamic>>fetchData(String city)async{
    final uri = Uri.parse("http://api.weatherapi.com/v1/current.json?key=0da3287425a848faaa8111123251410&q=$city&aqi=no");
    final respond=await Http.get(uri);
    if(respond.statusCode==200){
      return jsonDecode(respond.body);
    }else {
      throw Exception("Error😥😥");
    }
  }
}