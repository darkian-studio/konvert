import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:konvert/features/home/presentation/home_screen.dart';

void main() {
  testWidgets('renders the shell with navigation affordances', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(child: MaterialApp(home: HomeScreen())),
    );

    expect(find.widgetWithText(AppBar, 'Konvert'), findsOneWidget);
    expect(find.byTooltip('Settings'), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });
}
