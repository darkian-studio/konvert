import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:konvert/features/settings/presentation/settings_screen.dart';

void main() {
  testWidgets('renders the settings screen', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(child: MaterialApp(home: SettingsScreen())),
    );

    expect(find.widgetWithText(AppBar, 'Settings'), findsOneWidget);
  });
}
