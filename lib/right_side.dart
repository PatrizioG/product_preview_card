import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RightSide extends StatelessWidget {
  const RightSide({super.key});

  TextStyle _style() {
    return GoogleFonts.montserrat(
        color: Colors.grey, letterSpacing: 3.0, fontWeight: FontWeight.w700);
  }

  TextStyle _description_style() {
    return GoogleFonts.montserrat(
        color: Colors.grey, fontWeight: FontWeight.w500, height: 1.5);
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
            child: Text('PERFUME', style: _style()),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Text(
              'Gabrielle Essence Eau De Parfum',
              style: GoogleFonts.fraunces(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                height: 0.9,
              ),
            ),
          ),
          Expanded(
            child: Text(
              "A floral, solar and voluptuous interpretation composed by Olivier Polge, Perfumer-Creator for the House of CHANEL.",
              style: _description_style(),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: const HSLColor.fromAHSL(1, 158, 0.36, 0.37).toColor(),
                borderRadius: const BorderRadius.all((Radius.circular(10)))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.shopping_cart_outlined),
                  Text("Add to Cart"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
