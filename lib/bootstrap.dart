import 'package:flutter/foundation.dart';

/// Installs the two global error handlers before any throwing startup work.
void installErrorHandlers() {
  FlutterError.onError = (details) {
    try {
      FlutterError.presentError(details);
    } on Object catch (_) {
      // A throwing error handler would recurse into itself.
    }
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    try {
      if (kDebugMode) {
        debugPrint('$error\n$stack');
      }
    } on Object catch (_) {
      // A throwing error handler would recurse into itself.
    }
    return true;
  };
}

/// Builds app-wide services before the first frame.
///
/// Conversion-service seams are overridden in the root ProviderScope as each
/// tool is built; the shell has no such services yet.
Future<void> bootstrap() async {}
