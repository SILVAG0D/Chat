import 'package:chat/shared/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() async{
 WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: Constants.apiKey, 
      appId: Constants.appId,
      messagingSenderId: Constants.messagingSenderId, 
      projectId: Constants.projectId)
 );
  } else {
    await Firebase.initializeApp();
  }
 
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}