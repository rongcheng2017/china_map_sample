import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mapofchina/map/china_map.dart';
import 'package:mapofchina/map/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
            child: MapWidget(
                cityItems: generatedCityItemsHelper((cityName) =>
                    CityItem(cityName: cityName, cityColor: _randomColor())))),
      ),
    );
  }

  /// 随机生成颜色
  Color _randomColor() {
    var index = Random().nextInt(3) % 3;
    if (index == 0) return shallowColor;
    if (index == 1) return middleColor;
    if (index == 2) return depthColor;
    return middleColor;
  }
}
