import 'package:get/get.dart';
import 'package:gshort/controller/categoryBynews_controller.dart';


class CategoryByNewsbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CategoryBynewsController());
  }
}
