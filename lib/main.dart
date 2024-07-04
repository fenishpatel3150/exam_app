import 'package:exam_app/screen/controller/DataController.dart';
import 'package:exam_app/screen/view/SplashScreen/SplashScreen.dart';
import 'package:exam_app/screen/view/home/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => DataController(),),
    ],
    child: const MyApp(),
    )


  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

