import 'package:get/get.dart';
import 'package:gshort/api/category_api.dart';
import 'package:gshort/model/category_model.dart';

class CategoryController extends GetxController
{
  var isLoading = true.obs;
  var productList = List<Category>().obs;

  @override
  void onInit() {
    Post();
    super.onInit();
  }

  Future<void> Post() async {
    try {
      isLoading(true);
      var category = await AllCategory.fetchProducts();
      if(category != null) {
        productList.assignAll(category);
      }
    } finally {
      isLoading(false);
    }
  }


}