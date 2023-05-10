import 'package:flutter/material.dart';
import 'package:flutter_gora_app/provider/provider.dart';
import 'package:flutter_gora_app/screens/home_page/index.dart';
import 'package:provider/provider.dart';
import 'configuration/routes.dart';
// package:flutter/services.dartY
import 'package:flutter/services.dart';
import 'screens/sign_in_screen/choose_login_page.dart';
import 'screens/sign_in_screen/login_page.dart';
import 'screens/sign_in_screen/otp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.light,
      routes: {
        otpPageRoute: (context) => const OtpScreen(),
        homePageRoute: (context) => const IndexPage(),
        loginEmailPageRoute: (context) => const LoginPage(),
        chooseLoginPage: (context) => const ChooseLogin(),
      },
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => HardwareService(),
          )
        ],
        child: const SafeArea(
          child: ChooseLogin(),
        ),
      ),
    );
  }
}
