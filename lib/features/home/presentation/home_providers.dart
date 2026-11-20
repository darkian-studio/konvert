import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:konvert/features/home/presentation/home_notifier.dart';

/// Provider for the home screen's ViewModel.
final homeNotifierProvider = NotifierProvider<HomeNotifier, HomeState>(
  HomeNotifier.new,
);
