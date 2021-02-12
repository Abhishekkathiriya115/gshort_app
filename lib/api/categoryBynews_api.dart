import 'package:gshort/model/allnews_model.dart';
import 'package:http/http.dart';

class NewsAll {
  // ignore: missing_return
  static Future<List<NewsModel>> fetchProducts() async {
    var url = 'https://newswebsite786.000webhostapp.com/gshort/postAll.php';
    var response = await get(url);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return allnewsFromJson(jsonString);
    }
  }
}
