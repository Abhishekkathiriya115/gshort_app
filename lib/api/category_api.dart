import 'package:gshort/model/category_model.dart';
import 'package:http/http.dart';

class AllCategory {

  static Future<List<Category>> fetchProducts() async {
    var response = await get(
        'https://newswebsite786.000webhostapp.com/gshort/categoriesall.php');
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return CategoryFromJson(jsonString);
    }
  }
}
