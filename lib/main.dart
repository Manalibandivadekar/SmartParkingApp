// main.dart
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:parking_app/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
    await Firebase.initializeApp(options: FirebaseOptions(
    apiKey: 'AIzaSyB4Zd9pxcb_FGDb8czLW-UVSB6n0flPcTc', 
    appId: '1:9694087846:android:0db5cbf76ee5663daec267', 
    messagingSenderId: '9694087846', 
    projectId: 'smart-parking-app-30420'));
    
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Parking System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),      
      home: const MainPage(),
    );
  }
}
