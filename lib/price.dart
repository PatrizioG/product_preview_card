import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Price extends StatelessWidget {
  const Price(this.oldPrice, this.newPrice, {super.key});
  final String oldPrice;
  final String newPrice;

  TextStyle _newPriceStyle() {
    return GoogleFonts.fraunces(
      color: const HSLColor.fromAHSL(1, 158, 0.36, 0.37).toColor(),
      fontWeight: FontWeight.bold,
      fontSize: 30,
    );
  }

  TextStyle _oldPriceStyle() {
    return GoogleFonts.montserrat(
        color: const HSLColor.fromAHSL(1, 228, 0.12, 0.48).toColor(),
        fontWeight: FontWeight.w500,
        decoration: TextDecoration.lineThrough);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(newPrice, style: _newPriceStyle()),
          const SizedBox(
            width: 20,
          ),
          Text(
            oldPrice,
            style: _oldPriceStyle(),
          )
        ],
      ),
    );
  }
}
