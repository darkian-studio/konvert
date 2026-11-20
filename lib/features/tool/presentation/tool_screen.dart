import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:konvert/features/tool/presentation/tool_providers.dart';

/// The screen a conversion tool runs on.
///
/// Its body is empty until the first tool is built — no per-tool stub screens
/// are added ahead of their implementation.
class ToolScreen extends ConsumerWidget {
  /// Creates the tool screen.
  const new({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(toolNotifierProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Tool')),
    );
  }
}
