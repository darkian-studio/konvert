import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:konvert/features/settings/presentation/settings_notifier.dart';

/// Provider for the settings screen's ViewModel.
final settingsNotifierProvider =
    NotifierProvider<SettingsNotifier, SettingsState>(SettingsNotifier.new);
