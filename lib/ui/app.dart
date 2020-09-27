import 'package:flutter/material.dart';
import 'package:flutter_app/src/model.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  final model = Get.find<Model>();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text('${model.count.value}')),
              IconButton(
                onPressed: () => model.count + 1,
                icon: Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
