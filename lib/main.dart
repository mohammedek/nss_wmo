import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nss_wmo/pages/home/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // await Firebase.initializeApp(
  //   options: FirebaseOptions(
  //       apiKey: "AIzaSyAJCzqskQcDIxxMbyQpRUfJWyDdDkbyU24",
  //       authDomain: "nss-website-wmo.firebaseapp.com",
  //       databaseURL: "https://nss-website-wmo-default-rtdb.firebaseio.com",
  //       projectId: "nss-website-wmo",
  //       storageBucket: "nss-website-wmo.appspot.com",
  //       messagingSenderId: "819067784650",
  //       appId: "1:819067784650:web:f3476c02dada057a531333",
  //       measurementId: "G-5253W7LSJN")
  // );
  runApp(const NssWmo());
}

class NssWmo extends StatefulWidget {
  const NssWmo({Key? key}) : super(key: key);

  @override
  State<NssWmo> createState() => _NssWmoState();
}
class _NssWmoState extends State<NssWmo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}
