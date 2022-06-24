import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
                'assets/logo/nss_logo.png',
                fit: BoxFit.contain,
                height: 60,
              ),
            Container(
                padding: const EdgeInsets.all(9.0), child: const Text('   NSS -WMOC- '))
          ],
            ),
          ),
          body:Container(
            height: 200,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))
            ),
            child: Column(
              children: [
               Image.asset('assets/logo/wmo_logo.png',height:80,),
                const Center(
                  child: Text('Wmo Arts&Science College\n'
                      'NATIONAL SERVICE SCHEME',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}


