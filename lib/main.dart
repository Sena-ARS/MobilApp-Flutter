import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kitap_uyg/pages/home_pages.dart';
import 'firebase_options.dart'; // FirebaseOptions kodunuza uygun import yapın

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      title: 'SENA ARSLAN',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
