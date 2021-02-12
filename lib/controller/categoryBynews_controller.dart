import 'package:get/get.dart';
import 'package:gshort/api/allnews_api.dart';
import 'package:gshort/model/allnews_model.dart';

class CategoryBynewsController extends GetxController {
  var isLoading = true.obs;
  var productList = List<NewsModel>().obs;

  @override
  void onInit() {
    post(Get.arguments);
    super.onInit();
  }

  Future<void> post(String categoryName) async {
    try {
      isLoading(true);
      List<NewsModel> news = await NewsAll.fetchProducts();
      if (news != null) {
        productList.assignAll(news.where((element) => element.categoryName.toLowerCase() == categoryName.toLowerCase()).toList());
      }
    } finally {
      isLoading(false);
    }
  }
}
