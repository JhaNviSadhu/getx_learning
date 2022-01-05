import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation/cart.dart';

import 'package:getx_navigation/homepage.dart';
import 'package:getx_navigation/shope.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: () => const Home()),
        GetPage(name: '/shop/:product', page: () => const Shop()),
        GetPage(name: '/cart', page: () => const Cart()),
      ],
      // home: Home(),
    );
  }
}
