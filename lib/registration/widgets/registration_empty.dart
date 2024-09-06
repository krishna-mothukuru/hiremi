import 'package:flutter/material.dart';

class RegistrationEmpty extends StatelessWidget {
  const RegistrationEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('🏙️', style: TextStyle(fontSize: 64)),
        Text(
          'API response is empty',
          style: theme.textTheme.headlineSmall,
        ),
      ],
    );
  }
}
