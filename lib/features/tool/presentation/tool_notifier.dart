import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Immutable tool-screen state.
///
/// Empty: the screen has no tool running until one is built.
class ToolState {
  /// Creates the initial tool state.
  const new();
}

/// The tool screen's ViewModel.
class ToolNotifier extends Notifier<ToolState> {
  @override
  ToolState build() => const ToolState();
}
