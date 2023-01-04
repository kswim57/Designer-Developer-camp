import 'package:flutter/material.dart';
import 'package:ddcamp_day3_wireframe/themes/theme_color.dart';
import 'package:ddcamp_day3_wireframe/screens/screen_homepage.dart';
import 'package:ddcamp_day3_wireframe/screens/screen_login.dart';
import 'package:ddcamp_day3_wireframe/screens/screen_register.dart';
import 'package:ddcamp_day3_wireframe/screens/screen_walletconnect.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      routes: {
        '/home' : (context) => HomePage(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/walletconnect': (context) => WalletConnect(),
      },
      initialRoute: '/home',
    );
  }
}

