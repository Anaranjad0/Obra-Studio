import 'package:flutter/material.dart';

class SampleCard extends StatelessWidget {
  final String cardName;

  const SampleCard({super.key, required this.cardName});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          cardName,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
