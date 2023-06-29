import 'package:app/screens/conclusion_password_screen.dart';
import 'package:app/screens/home_page.dart';
import 'package:app/screens/login_screen_view.dart';
import 'package:app/screens/new_password_screen.dart';
import 'package:app/screens/recover_password.dart';
import 'package:app/screens/terms_of_service_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      getPages: [
        GetPage(
          name: '/',
          page: () => const LoginScreen(),
        ),
        GetPage(
          name: '/TermsOfService',
          page: () => const TermOfService(),
        ),
        GetPage(
          name: '/RecoverPassword',
          page: () => const RecoverPassword(),
        ),
        GetPage(
          name: '/NewPassword',
          page: () => NewPasswordScreen(),
        ),
        GetPage(
          name: '/ConclusionPassword',
          page: () => const ConclusionPassword(),
        ),
        GetPage(
          name: '/HomePage',
          page: () => HomePage(),
        )
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
