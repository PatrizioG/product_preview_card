import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class Price extends StatelessWidget {
  const Price(this.oldPrice, this.newPrice, {super.key});
  final String oldPrice;
  final String newPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text(newPrice), Text(oldPrice)],
    );
  }
}
