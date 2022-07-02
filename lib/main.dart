import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:nss_wmo/pages/event_page.dart';
import 'package:nss_wmo/pages/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:firebase_storage/firebase_storage.dart';

void main() {
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
