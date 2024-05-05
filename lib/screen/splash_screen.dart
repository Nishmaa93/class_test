import 'package:flutter/material.dart';
import 'grid_view_screen.dart';
import 'dart:async';
 
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome Lalit!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
 
class NameButtonsApp extends StatefulWidget {
  @override
  _NameButtonsAppState createState() => _NameButtonsAppState();
}
 
class _NameButtonsAppState extends State<NameButtonsApp> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => GridViewScreen(),
        ),
      ),
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}