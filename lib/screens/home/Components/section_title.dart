import 'package:flutter/material.dart';
import 'package:foodapp/constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      TextButton(
          onPressed: press,
          style: TextButton.styleFrom(foregroundColor: kActiveColor),
          child: const Text("Sell all"))
    ]);
  }
}
