import 'package:get/get.dart';
import 'package:gshort/binding/categoryBynews_binding.dart';
import 'package:gshort/binding/home_binding.dart';
import 'package:gshort/resource/route.dart';
import 'package:gshort/ui/page/categoryBynews_page.dart';
import 'package:gshort/ui/page/home_page.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: firstLaunchRoute, page: () => HomePage(), binding: HomeBinding()),
      GetPage(
          name: CategoryBypost,
          page: () => CategoryByNews(),
          binding: CategoryByNewsbinding()),
     // GetPage(name: loginRoute, page: () => LoginPage(), binding: LoginBinding()),
  ];
}
