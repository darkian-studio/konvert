import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:konvert/features/tool/presentation/tool_notifier.dart';

/// Provider for the tool screen's ViewModel.
final toolNotifierProvider = NotifierProvider<ToolNotifier, ToolState>(
  ToolNotifier.new,
);
