import 'package:flutter/material.dart';
import 'package:unidades_moveis_app/pages/login.dart';
import 'package:unidades_moveis_app/pages/travel.dart';
import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ClassTravel(
        title: "Travel Page",
      ),
    );
  }
}
