import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:mi_app_flutter/main.dart';

void main() {
  testWidgets('Prueba del contador', (WidgetTester tester) async {
    // Construir nuestra app y activar un frame.
    await tester.pumpWidget(const MiApp());

    // Verificar que el contador comienza en 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tocar el icono '+' y activar un frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verificar que el contador se ha incrementado.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('Verificar elementos de UI', (WidgetTester tester) async {
    await tester.pumpWidget(const MiApp());

    // Verificar que los elementos principales están presentes
    expect(find.text('¡Hola Mundo!'), findsOneWidget);
    expect(find.text('Bienvenido a Flutter'), findsOneWidget);
    expect(find.byIcon(Icons.flutter_dash), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}
