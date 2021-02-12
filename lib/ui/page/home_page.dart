import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gshort/controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PageView.builder(
          controller: controller.pageController,
          //scrollDirection: Axis.vertical,
          itemCount: controller.pageViewPageList.length,
          itemBuilder: (context, index) {
            return controller.pageViewPageList[index];
          },
        ),
      ),
    );
  }
}
