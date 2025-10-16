import 'dart:convert';

import 'package:http/http.dart' as http;

class WeatherRepos{
  Future<Map<String,dynamic>>fetchData(String city)async
  {
    final Url="http://api.weatherapi.com/v1/current.json?key=0da3287425a848faaa8111123251410&q=$city&aqi=no";
    final response=await http.get(Uri.parse(Url));
    if(response.statusCode==200)
    {
      return jsonDecode(response.body);
    }else {
      throw Exception("Error Through Fetching Data");
    }
}
}