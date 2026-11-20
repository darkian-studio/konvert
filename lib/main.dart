import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:konvert/app.dart';
import 'package:konvert/bootstrap.dart';

/// Launches Konvert: crash net, app-wide services, then the widget tree.
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  installErrorHandlers();
  await bootstrap();
  runApp(
    const ProviderScope(child: App()),
  );
}
