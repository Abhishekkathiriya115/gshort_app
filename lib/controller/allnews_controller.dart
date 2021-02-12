import 'package:get/get.dart';
import 'package:gshort/api/allnews_api.dart';
import 'package:gshort/model/allnews_model.dart';

class AllNewsController extends GetxController

{
  var isLoading = true.obs;
  var productList = List<NewsModel>().obs;

  @override
  void onInit() {
    Post();
    super.onInit();
  }

  Future<void> Post() async {
    try {
      isLoading(true);
      var news = await NewsAll.fetchProducts();
      if(news != null) {
        productList.assignAll(news);
      }
    } finally {
      isLoading(false);
    }
  }
}
