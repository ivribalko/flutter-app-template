import 'package:flutter/material.dart';
import 'package:flutter_app/src/common.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import 'common.dart';
import 'home/home_page.dart';
import 'page/page_page.dart';
import 'routes.dart';

class App extends StatelessWidget {
  final Box save = Get.find(tag: kSave);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: getThemeMode(save),
      getPages: [
        GetPage(name: Routes.home, page: () => HomePage()),
        GetPage(name: Routes.page, page: () => PagePage()),
      ],
    );
  }
}
