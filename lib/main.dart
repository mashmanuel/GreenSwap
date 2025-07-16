import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/home_screen.dart';
import 'screens/add_item_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const GreenSwapApp());
}

class GreenSwapApp extends StatelessWidget {
  const GreenSwapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GreenSwap',
      initialRoute: '/',
      routes: {
        '/': (_) => LoginScreen(),
        '/signup': (_) => SignupScreen(),
        '/home': (_) => HomeScreen(),
        '/add': (_) => AddItemScreen(),
      },
    );
  }
}
