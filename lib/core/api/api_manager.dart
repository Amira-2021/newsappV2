import 'dart:convert';
import 'package:newsapp/core/model/SourceResponse.dart';
import 'package:http/http.dart' as http;
class ApiManager{
  static const String baseUrl='newsapi.org';
  static const String apiKey='6b8e609aafb14dfca9ef4bd6db74c62f';
//  https://newsapi.org
//  /v2/top-headlines/sources
//  ?apiKey=6b8e609aafb14dfca9ef4bd6db74c62f&category=sports
  static Future <SourceResponse> getSources(String categoryId) async{
     var url=Uri.https(baseUrl,'/v2/top-headlines/sources',
           {
       'apiKey':apiKey,
       'category':categoryId
           });
     var response= await http.get(url);
     return SourceResponse.fromJson(jsonDecode(response.body));
   }
}

