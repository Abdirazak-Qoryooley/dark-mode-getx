import 'package:dark_mode_getx/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homepage extends StatelessWidget {
  homepage({super.key});

  final homecontroller controller = Get.put(homecontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dar; mode'),
        actions: [
          GetBuilder<homecontroller>(
            builder: (_) => Switch(
              focusColor: Colors.red,
              activeColor: Colors.black,
              value: controller.isdark,
              onChanged: (state) {
                controller.changetheme(state);
              },
            ),
          )
        ],
      ),
    );
  }
}
