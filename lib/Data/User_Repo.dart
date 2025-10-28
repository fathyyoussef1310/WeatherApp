import 'dart:convert';

import 'package:http/http.dart' as http;

class weatherrepo{
  Future<Map<String,dynamic>>Fetchdata(String city)async{
    final Url=Uri.parse("http://api.weatherapi.com/v1/current.json?key=0da3287425a848faaa8111123251410&q=$city&aqi=no");
    final response=await http.get(Url);
    if(response.statusCode==200){
      return jsonDecode(response.body);
    }else {
      throw Exception("Error in Fetching Data😥😥");
    }
  }
}