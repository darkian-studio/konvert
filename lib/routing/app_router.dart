import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:konvert/features/home/presentation/home_screen.dart';
import 'package:konvert/features/settings/presentation/settings_screen.dart';
import 'package:konvert/features/tool/presentation/tool_screen.dart';
import 'package:konvert/routing/error_screen.dart';
import 'package:konvert/routing/routes.dart';

/// The single GoRouter for the app, wired once by App.
final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: Routes.home,
    routes: [
      GoRoute(
        path: Routes.home,
        builder: (_, _) => const HomeScreen(),
      ),
      GoRoute(
        path: Routes.tool,
        builder: (_, _) => const ToolScreen(),
      ),
      GoRoute(
        path: Routes.settings,
        builder: (_, _) => const SettingsScreen(),
      ),
    ],
    errorBuilder: (_, state) => ErrorScreen(error: state.error),
  );
});
