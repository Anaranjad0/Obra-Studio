import 'package:flutter/material.dart';

class SampleCard extends StatelessWidget {
  final String cardName;

  const SampleCard({super.key, required this.cardName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 300, height: 200, child: Center(child: Text(cardName)));
  }
}
