import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Immutable settings-screen state.
///
/// Empty until the first setting is introduced.
class SettingsState {
  /// Creates the initial settings state.
  const new();
}

/// The settings screen's ViewModel.
class SettingsNotifier extends Notifier<SettingsState> {
  @override
  SettingsState build() => const SettingsState();
}
