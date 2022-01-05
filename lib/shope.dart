import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.arguments),
            //for get data by Namede route navigation
            // Text("${Get.parameters['product']}"),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/cart');
                // Get.offAll(() => const Cart());
              },
              child: const Text("Go to Cart"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back(result: "Success");
              },
              child: const Text("Back to Main"),
            ),
          ],
        ),
      ),
    );
  }
}
