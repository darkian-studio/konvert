import 'package:flutter/material.dart';

/// The router's destination for unmatched locations and failed builds.
class ErrorScreen extends StatelessWidget {
  /// Creates the error screen for [error].
  const new({required this.error, super.key});

  /// The routing error, when the router supplied one.
  final Object? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Something went wrong')),
      body: Center(
        child: Text(
          error?.toString() ?? 'Page not found.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
