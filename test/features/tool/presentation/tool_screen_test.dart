import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:konvert/features/tool/presentation/tool_screen.dart';

void main() {
  testWidgets('renders the empty tool screen', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(child: MaterialApp(home: ToolScreen())),
    );

    expect(find.widgetWithText(AppBar, 'Tool'), findsOneWidget);
  });
}
