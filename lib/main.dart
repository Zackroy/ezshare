import 'package:ezshare/screens/download/download.dart';
import 'package:ezshare/screens/upload/upload.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ezshare/screens/welcome_screen.dart';
import 'package:ezshare/screens/login_screen.dart';
import 'package:ezshare/screens/registration_screen.dart';
import 'package:ezshare/screens/chat_screen.dart';
import 'package:ezshare/screens/qr_scanner/qr_scanner.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(Ezshare());
}

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
      initialRoute: '/download',
      routes: {
        '/' : (context) => WelcomeScreen(),
        '/login' : (context) => LoginScreen(),
        '/register' : (context) => RegistrationScreen(),
        '/chat' : (context) => ChatScreen(),
        '/qr_code' : (context) => Scanner(),
        '/upload' : (context) => Upload(),
        '/download' : (context) => Download(),


      },
      // home: WelcomeScreen(),
    );
  }
}
