import 'package:flutter/material.dart';
import 'package:flutter_app/src/common.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class PagePage extends StatelessWidget {
  final Box save = Get.find(tag: kSave);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Switch(
            value: Get.isDarkMode,
            onChanged: (x) => save.put(
              kDarkMode,
              !Get.isDarkMode,
            ),
          ),
        ),
      ),
    );
  }
}
