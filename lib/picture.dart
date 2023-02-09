import 'package:flutter/widgets.dart';

class Picture extends StatelessWidget {
  const Picture(this.isDesktop, {Key? key}) : super(key: key);
  final bool isDesktop;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: isDesktop
          ? const BorderRadius.horizontal(left: Radius.circular(10))
          : const BorderRadius.vertical(top: Radius.circular(10)),
      child: Image(
          image: AssetImage(isDesktop
              ? "images/image-product-desktop.jpg"
              : "images/image-product-mobile.jpg")),
    );
  }
}
