import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nss_wmo/widgets/buildCard.dart';
import 'event_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    padding: const EdgeInsets.all(9.0),
                    child: const Text('   NSS - WMOC'))
              ],
            )),
        body: ListView(
          children: [
            Column(children: [
              Container(
                  height: 200,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                      color: Colors.white10,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(50))),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/logo/wmo_logo.png',
                        height: 60,
                      ),
                      const Center(
                          child: Text(
                        'Wmo Arts&Science College\n'
                        'NATIONAL SERVICE SCHEME',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      )),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EventPage()));
                          },
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    margin: EdgeInsets.all(8),
                                    height: 60,
                                    width: 340,
                                    child: Center(
                                      child: Text(
                                        "Events",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Color(0xFf363f93),
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          new BoxShadow(
                                              color: Color(0xFF363f93)
                                                  .withOpacity(0.3),
                                              offset: new Offset(-9.0, 0.0),
                                              blurRadius: 10.0,
                                              spreadRadius: 4.0)
                                        ])),
                              ])),
                    ],
                  )),
              GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                children: [
                  Card(
                      semanticContainer: true,
                      color: Colors.white54,
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset('assets/images/nss_main1.jpeg',
                              fit: BoxFit.cover))),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(
                            'assets/images/nss_main6.jpeg',
                            fit: BoxFit.cover,
                          ))),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          'assets/images/nss_main3.jpeg',
                          fit: BoxFit.fill,
                        ),
                      )),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      color: Colors.white54,
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(
                            'assets/images/nss_main4.jpeg',
                            fit: BoxFit.cover,
                          ))),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                      color: Colors.white54,
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(
                            'assets/images/nss_main5.jpeg',
                            fit: BoxFit.cover,
                          ))),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.white54,
                      child: SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset(
                            'assets/images/nss_main2.jpeg',
                            fit: BoxFit.cover,
                          ))),
                ],
              )
            ]),
          ],
        ));
  }
}
