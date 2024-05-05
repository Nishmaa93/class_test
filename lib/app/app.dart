// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';

import '../screen/grid_view_screen.dart';
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Name Buttons App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GridViewScreen(),
    );
  }
}