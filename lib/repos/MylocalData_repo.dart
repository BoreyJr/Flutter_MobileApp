import 'package:myfont/models/apiMovie.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

Future<ArticleModel> readArticleData() async {
  String url = "http://192.168.43.174/ReadApi.php";
  http.Response response = await http.get(url);
  if (response.statusCode == 200) {
    return compute(articleModelFromJson, response.body);
  } else {
    throw Exception("Error while reading: ${response.statusCode}");
  }
}
