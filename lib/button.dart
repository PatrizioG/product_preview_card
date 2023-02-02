import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  TextStyle _buttonStyle() {
    return GoogleFonts.montserrat(
      color: const Color.fromRGBO(255, 255, 255, 1),
      fontWeight: FontWeight.w500,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const HSLColor.fromAHSL(1, 158, 0.36, 0.37).toColor(),
          borderRadius: const BorderRadius.all((Radius.circular(10)))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'images/icon-cart.svg',
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
            const SizedBox(width: 10),
            Text(
              "Add to Cart",
              style: _buttonStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
