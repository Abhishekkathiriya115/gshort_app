import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gshort/app_module.dart';
import 'package:gshort/resource/route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: firstLaunchRoute,
        getPages: AppPages.pages);
  }
}
