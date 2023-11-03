import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/models/SourceResponse.dart';
import '../models/NewsResponse.dart';
import 'api-constnts.dart';

class ApiFunctions{

   static Future<SourceResponse> getsources(String categryId)async{

     //https://newsapi.org/v2/top-headlines/sources?apiKey=API_KEY

     Uri url=Uri.https(Constants.baseUrl,Constants.sourceApi,{
       'apiKey':'9d5c971e2891457e9aeabccb94a7a263',
       'category': categryId
     });
     try{
       var response= await http.get(url);
       var bodystring=response.body;
       var json=jsonDecode(bodystring);
      return SourceResponse.fromJson(json);
     }catch(e)
        {throw e;}
   }

   static Future<NewsResponse>? getNewsbyId(String sourceId)async{

     /*https://newsapi.org/v2/everything?q=bitcoin&apiKey=9d5c971e2891457e9aeabccb94a7a263*/

     Uri url=Uri.https(Constants.baseUrl,Constants.NewsApi,{
       'apiKey':'9d5c971e2891457e9aeabccb94a7a263',
       'sources':'sourceId'
     });
     try{
       var response=await http.get(url);
       var bodystring=response.body;
       var json=jsonDecode(bodystring);
       return NewsResponse.fromJson(json);
     }catch(e){
       throw e;
     }
   }
}