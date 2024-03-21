// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'Pantallas1060/panel1060/Panel_Pantalla1060.dart';

void main() => runApp(Myiplay());

class Myiplay extends StatelessWidget {
  const Myiplay({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'iCescMusic',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
          // useMaterial3: false,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
          useMaterial3: true),
      home: Panel_Pantalla1060(),

      // A widget which will be started on application startup
    );
  }
}
