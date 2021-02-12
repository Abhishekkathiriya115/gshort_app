import 'package:get/get.dart';
import 'package:gshort/controller/allnews_controller.dart';
import 'package:gshort/controller/categoryBynews_controller.dart';
import 'package:gshort/controller/category_controller.dart';
import 'package:gshort/controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => CategoryController());
    Get.lazyPut(() => AllNewsController());
  }
}
