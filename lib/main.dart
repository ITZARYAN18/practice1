import 'package:flutter/material.dart';
import 'package:notes_app/task1/gridwa.dart';
import 'package:notes_app/task1/kolum.dart';
import 'package:notes_app/task2/cart_provider.dart';
import 'package:notes_app/task2/navgation.dart';
import 'package:notes_app/tut1/home.dart';
import 'package:notes_app/tut1/provide.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> Provide()),
        ChangeNotifierProvider(create: (context)=> CartProvider()),
      ],
      child: MaterialApp(
        home: MainScreen(),
      ),
    );
  }

}
