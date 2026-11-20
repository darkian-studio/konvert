import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:konvert/features/home/presentation/home_providers.dart';
import 'package:konvert/routing/routes.dart';

/// The app's landing screen and navigation shell.
class HomeScreen extends ConsumerWidget {
  /// Creates the home screen.
  const new({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(homeNotifierProvider);
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Konvert'),
        actions: [
          IconButton(
            onPressed: () => context.go(Routes.settings),
            icon: const Icon(Icons.settings),
            tooltip: 'Settings',
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Konvert', style: textTheme.displayLarge),
              const SizedBox(height: 16),
              Text(
                'Conversion tools coming soon.',
                style: textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push(Routes.tool),
        tooltip: 'Tools',
        child: const Icon(Icons.transform),
      ),
    );
  }
}
