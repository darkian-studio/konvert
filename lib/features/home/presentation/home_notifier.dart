import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Immutable home-screen state.
///
/// Empty in the shell: the tool list arrives as tools are built.
class HomeState {
  /// Creates the initial home state.
  const new();
}

/// The home screen's ViewModel.
class HomeNotifier extends Notifier<HomeState> {
  @override
  HomeState build() => const HomeState();
}
