import 'package:flutter/material.dart';
import 'package:product_preview_card/picture.dart';
import 'package:product_preview_card/right_side.dart';

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
          primarySwatch: Colors.blue,
          backgroundColor:
              const HSLColor.fromAHSL(1, 30, 0.38, 0.92).toColor()),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 375;

    return DefaultTextStyle(
      style: const TextStyle(),
      child: Container(
        decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
        child: Center(
          child: Container(
            width: 600,
            height: 450,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all((Radius.circular(10)))),
            child: Row(
              children: [
                Expanded(child: Picture(isDesktop)),
                const Expanded(child: RightSide())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
