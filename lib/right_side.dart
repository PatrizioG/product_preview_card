import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:product_preview_card/price.dart';
import 'button.dart';

class RightSide extends StatelessWidget {
  const RightSide({super.key});

  TextStyle _subTitleStyle() {
    return GoogleFonts.montserrat(
        // Dark grayish blue: hsl(228, 12%, 48%)
        color: const HSLColor.fromAHSL(1, 228, 0.12, 0.48).toColor(),
        letterSpacing: 3.0,
        fontWeight: FontWeight.w500);
  }

  TextStyle _titleStyle() {
    return GoogleFonts.fraunces(
      fontWeight: FontWeight.bold,
      fontSize: 32,
      height: 0.9,
    );
  }

  TextStyle _descriptionStyle() {
    return GoogleFonts.montserrat(
        color: const HSLColor.fromAHSL(1, 228, 0.12, 0.48).toColor(),
        fontWeight: FontWeight.w500,
        height: 1.5);
  }

  TextStyle _priceStyle() {
    return GoogleFonts.montserrat(
        color: const HSLColor.fromAHSL(1, 228, 0.12, 0.48).toColor(),
        fontWeight: FontWeight.w500,
        height: 1.5);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text('PERFUME', style: _subTitleStyle()),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              'Gabrielle Essence Eau De Parfum',
              style: _titleStyle(),
            ),
          ),
          Expanded(
            child: Text(
              "A floral, solar and voluptuous interpretation composed by Olivier Polge, Perfumer-Creator for the House of CHANEL.",
              style: _descriptionStyle(),
            ),
          ),
          const Price('\$169.99', '\$149.99'),
          const Button()
        ],
      ),
    );
  }
}
