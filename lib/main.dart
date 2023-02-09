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
    return MediaQuery.fromWindow(
        child: Directionality(
            textDirection: TextDirection.ltr,
            child: Container(
              decoration: BoxDecoration(
                  color: const HSLColor.fromAHSL(1, 30, 0.38, 0.92).toColor()),
              child: const MyHomePage(),
            )));
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 630;
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10),
        constraints: BoxConstraints(
          maxWidth: isDesktop ? 600 : 343,
          maxHeight: isDesktop ? 450 : 620,
        ),
        //height: isDesktop ? 450 : 480,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.all((Radius.circular(10)))),
        child: isDesktop
            ? Row(
                children: [
                  Picture(isDesktop),
                  Expanded(child: RightSide(isDesktop))
                ],
              )
            : Column(children: [
                Picture(isDesktop),
                Expanded(child: RightSide(isDesktop))
              ]),
      ),
    );
  }
}
