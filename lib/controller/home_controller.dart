import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gshort/ui/page/all_news_page.dart';
import 'package:gshort/ui/page/category_page.dart';

class HomeController extends GetxController {
  var pageController = PageController(initialPage: 1);

  var pageViewPageList = [
    CategoryPage(),
    AllNews(),
  ];
}
