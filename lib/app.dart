import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux_app/screens/HomeScreen.dart';
import 'package:flutter_redux_app/screens/LoginScreen.dart';

class MyApp extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        SystemChrome.setEnabledSystemUIOverlays([]);
        return MaterialApp(
            home: HomeScreen(),
            initialRoute: "/LoginScreen",
            routes: {
                "/LoginScreen": (context) => LoginScreen(),
            }
        );
    }
}