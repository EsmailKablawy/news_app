import 'package:get/get.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class NewsController extends GetxController{
  var isLoading = true.obs;
String? stringResponse;
Map? DataResponse;
List listResponse = [].obs;
@override
  void onInit() {
    super.onInit();
    apicall();
  }
Future apicall()async {
  http.Response response;
  String url =
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=4acbbf6dff5c427fb2d5ebc259cc4f5d';
      response=await http.get(Uri.parse(url));
      try {
        isLoading(true);
        if(response.statusCode==200){
        stringResponse=response.body;
        DataResponse=json.decode(response.body);
        listResponse=DataResponse!['articles'];
      }else{
        print("Error");
      }
      } finally{
        isLoading(false);
      }
}
}