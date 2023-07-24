import 'package:app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Login screen tests', () {
    testWidgets('Login form switch CPF/CNPJ tests',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      final hintCpf = find.bySemanticsLabel('Digite seu CPF');
      final hintCnpj = find.bySemanticsLabel('Digite seu CNPJ');

      final cnpjBtn = find.byKey(const Key('cnpjBtn'));
      final cpfBtn = find.byKey(const Key('cpfBtn'));

      expect(hintCpf, findsOneWidget);

      await tester.tap(cnpjBtn);
      await tester.pump();
      expect(hintCnpj, findsOneWidget);

      await tester.tap(cpfBtn);
      await tester.pump();
      expect(hintCpf, findsOneWidget);
    });

    testWidgets('Login inputs test', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      final cpfInput = find.byKey(const Key('cpfInput'));
      final passwordInput = find.byKey(const Key('passwordInput'));
      final loginBtn = find.byKey(const Key('loginBtn'));
      final closeDialogBtn = find.byKey(const Key('closeDialogBtn'));

      final dialogText = find.text('Informe CPF/CNPJ e senha!');

      await tester.tap(loginBtn);
      await tester.pump();
      expect(dialogText, findsOneWidget);

      await tester.tap(closeDialogBtn);
      await tester.pump();

      await tester.enterText(cpfInput, '123456789');
      await tester.tap(loginBtn);
      await tester.pump();
      expect(dialogText, findsOneWidget);

      await tester.tap(closeDialogBtn);
      await tester.pump();

      await tester.enterText(passwordInput, 'senha123');
      await tester.tap(loginBtn);
      await tester.pump();
      expect(dialogText, findsOneWidget);

      await tester.tap(closeDialogBtn);
      await tester.pump();

      await tester.enterText(cpfInput, '12345678910');
      await tester.tap(loginBtn);
      await tester.pump();
      expect(dialogText, findsNothing);
    });

    testWidgets('Recover password tests', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      final forgetPasswordBtn = find.byKey(const Key('forgetPasswordBtn'));
      final recoverPasswordInput =
          find.byKey(const Key('recoverPasswordInput'));
      final newPasswordInput = find.byKey(const Key('newPasswordInput'));
      final nextBtn = find.byKey(const Key('nextBtn'));

      final snackbarText =
          find.text('Verifique as regras para sua senha e tente novamente');
      final conclusionText = find.text('Faça o login com sua nova senha');

      await tester.tap(forgetPasswordBtn);
      await tester.pumpAndSettle();

      await tester.enterText(recoverPasswordInput, 'exemplo@gmail.com');
      await tester.tap(nextBtn);
      await tester.pumpAndSettle();

      await tester.tap(nextBtn);
      await tester.pump();
      expect(snackbarText, findsOneWidget);
      expect(conclusionText, findsNothing);
      await tester.pumpAndSettle();

      await tester.enterText(newPasswordInput, 'exemplo');
      await tester.tap(nextBtn);
      await tester.pump();
      expect(snackbarText, findsOneWidget);
      expect(conclusionText, findsNothing);
      await tester.pumpAndSettle();

      await tester.enterText(newPasswordInput, 'exemplo123');
      await tester.tap(nextBtn);
      await tester.pump();
      expect(snackbarText, findsOneWidget);
      expect(conclusionText, findsNothing);
      await tester.pumpAndSettle();

      await tester.enterText(newPasswordInput, 'Exemplo123');
      await tester.tap(nextBtn);
      await tester.pumpAndSettle();
      expect(conclusionText, findsOneWidget);

      await tester.tap(nextBtn);
      await tester.pumpAndSettle();
      expect(find.text('Termos e condições'), findsOneWidget);
    });

    testWidgets('Register tests', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      final registerBtn = find.byKey(const Key('registerBtn'));
      final closeDialogBtn = find.byKey(const Key('closeDialogBtn'));

      final cnpjBtn = find.byKey(const Key('cnpjBtn'));
      final cpfBtn = find.byKey(const Key('cpfBtn'));

      final registerCpf = find.text("Cadastro de uma pessoa física!");
      final registerCnpj = find.text("Cadastro de uma pessoa jurídica!");

      expect(registerBtn, findsOneWidget);

      await tester.tap(registerBtn);
      await tester.pump();
      expect(registerCpf, findsOneWidget);

      await tester.tap(closeDialogBtn);
      await tester.pump();
      await tester.tap(cnpjBtn);
      await tester.pump();
      await tester.tap(registerBtn);
      await tester.pump();
      expect(registerCnpj, findsOneWidget);

      await tester.tap(closeDialogBtn);
      await tester.pump();
      await tester.tap(cpfBtn);
      await tester.pump();
      await tester.tap(registerBtn);
      await tester.pump();
      expect(registerCpf, findsOneWidget);
    });

    testWidgets('terms of service tests', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      final terms = find.byKey(const Key('terms'));
      final privacyPolicy = find.text('Política de Privacidade');

      expect(terms, findsOneWidget);

      await tester.tap(terms);
      await tester.pumpAndSettle();
      expect(privacyPolicy, findsOneWidget);

      final arrowBtn = find.byKey(const Key('arrowBtn'));

      await tester.tap(arrowBtn);
      await tester.pumpAndSettle();
      expect(privacyPolicy, findsNothing);
    });
  });

  group('Home page test', () {
    testWidgets('Type user in home page tests', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      final cpfInput = find.byKey(const Key('cpfInput'));
      final passwordInput = find.byKey(const Key('passwordInput'));
      final loginBtn = find.byKey(const Key('loginBtn'));
      final logout = find.byKey(const Key('logout'));

      final cnpjBtn = find.byKey(const Key('cnpjBtn'));
      final cpfBtn = find.byKey(const Key('cpfBtn'));

      final cpfUserText = find.text('Seja bem-vindo Pessoa Física!');
      final cnpjUserText = find.text('Seja bem-vindo Pessoa Jurídica!');

      await tester.enterText(cpfInput, '12345678910');
      await tester.enterText(passwordInput, 'senha123');
      await tester.tap(loginBtn);
      await tester.pumpAndSettle();
      expect(cpfUserText, findsOneWidget);

      await tester.tap(logout);
      await tester.pumpAndSettle();

      await tester.tap(cnpjBtn);
      await tester.pump();
      await tester.enterText(cpfInput, '12345678910');
      await tester.enterText(passwordInput, 'senha123');
      await tester.tap(loginBtn);
      await tester.pumpAndSettle();
      expect(cnpjUserText, findsOneWidget);

      await tester.tap(logout);
      await tester.pumpAndSettle();

      await tester.tap(cpfBtn);
      await tester.pump();
      await tester.enterText(cpfInput, '12345678910');
      await tester.enterText(passwordInput, 'senha123');
      await tester.tap(loginBtn);
      await tester.pumpAndSettle();
      expect(cpfUserText, findsOneWidget);
    });
  });
}
