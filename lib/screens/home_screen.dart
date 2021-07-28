import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:bottom_nav_with_getx/controllers/home_controller.dart';
import 'package:bottom_nav_with_getx/widgets/appbar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final String title = 'Home';

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      appBar: appBarWithTitle(context, title),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You have pushed the button this many times:'),
              Obx(() => Text(
                    '${controller.counter.value}',
                    style: Theme.of(context).textTheme.headline4,
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: controller.increment,
      ),
    );
  }
}
