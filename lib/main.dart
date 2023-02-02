import 'package:flutter/widgets.dart';
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
    return MediaQuery(
      data: const MediaQueryData(),
      child: Directionality(
          textDirection: TextDirection.ltr,
          child: Container(
            decoration: BoxDecoration(
                color: const HSLColor.fromAHSL(1, 30, 0.38, 0.92).toColor()),
            child: const MyHomePage(),
          )),
    );
  }
}

//const

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 375;
    isDesktop = true;
    return Center(
      child: Container(
        width: 600,
        height: 450,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.all((Radius.circular(10)))),
        child: Row(
          children: [
            Expanded(child: Picture(isDesktop)),
            const Expanded(child: RightSide())
          ],
        ),
      ),
    );
  }
}
