import 'package:flutter/material.dart';
import 'package:teste/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.grey,
            iconTheme: IconThemeData(color: Colors.red),
            titleTextStyle: TextStyle(color: Colors.yellowAccent),
          )),
      home: const SegPagina(),
    );
  }
}
