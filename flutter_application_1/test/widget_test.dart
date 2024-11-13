import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Mybar.dart';
import 'package:flutter_application_1/widgets/perfil.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Verifica navegación desde Mybar a Perfil',
      (WidgetTester tester) async {
    // Carga el widget de Mybar
    await tester.pumpWidget(
      const MaterialApp(
        home: Mybar(),
      ),
    );

    // Verifica que el título "Menu Principal" esté presente en la AppBar
    expect(find.text('Menu Principal'), findsOneWidget);

    // Toca el GestureDetector (el último GestureDetector en la lista de acciones)
    await tester.tap(find.byType(GestureDetector).last);
    await tester
        .pumpAndSettle(); // Espera a que la animación y la navegación se completen

    // Verifica que la pantalla de Perfil esté visible
    expect(find.byType(Perfil), findsOneWidget);
  });
}
