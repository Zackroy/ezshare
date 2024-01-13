import 'package:flutter/material.dart';
import 'package:ezshare/screens/welcome_screen.dart';
import 'package:ezshare/screens/login_screen.dart';
import 'package:ezshare/screens/registration_screen.dart';
import 'package:ezshare/screens/chat_screen.dart';
import 'package:ezshare/screens/qr_scanner/qr_scanner.dart';

void main() => runApp(Ezshare());

class Ezshare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54)
          ,
        ),
      ),
      initialRoute: '/qr_code',
      routes: {
        '/' : (context) => WelcomeScreen(),
        '/login' : (context) => LoginScreen(),
        '/register' : (context) => RegistrationScreen(),
        '/chat' : (context) => ChatScreen(),
        '/qr_code' : (context) => Scanner(),

      },
      // home: WelcomeScreen(),
    );
  }
}
