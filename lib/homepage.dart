import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation/data_controller.dart';

import 'package:getx_navigation/shope.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Getx controller
  final DataController _dataController = DataController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("${_dataController.data}")),
            ElevatedButton(
              onPressed: () async {
                //default navigation
                _dataController.data.value =
                    await Get.to(() => const Shop(), arguments: "Passing Data");
                //named navigation
                // Get.toNamed('/shop/MacBookAir');
              },
              child: const Text("Go to Shop"),
            ),
          ],
        ),
      ),
    );
  }
}
