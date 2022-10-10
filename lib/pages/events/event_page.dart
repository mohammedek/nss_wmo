import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nss_wmo/data/firebase_db.dart';
import 'package:line_icons/line_icon.dart';
import 'dart:html' as html;

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('NSS Daily Events'),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: FirebaseDB.events.snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.hasData) {
              print(snapshot.data!.docs.length);
              return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, i) => Container(
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(5)),
                        child: ListTile(
                          // contentPadding: EdgeInsetsGeometry.infinity,
                          enabled: true,
                          style: ListTileTheme.of(context).style,
                          // title: Text(snapshot.data?.docs[i]['text']),
                          onTap: () {
                            AlertDialog alert = AlertDialog(
                              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                              backgroundColor: Colors.white,
                              title: Text(snapshot.data!.docs[i]['desc']),
                              titleTextStyle: TextStyle(fontWeight:FontWeight.w300),
                              actions: <Widget>[
                                Column(
                                  children: [
                                    // Text(snapshot.data!.docs[i]['desc']),
                                    Center(
                                        child: Image.network(
                                      snapshot.data!.docs[i]['img'],
                                      height: 300,
                                      width: 300,
                                    ))
                                  ],
                                )
                              ],

                            );
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return alert;
                              },
                            );
                          },
                          title: Text(
                            snapshot.data!.docs[i]['text'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                            textAlign: TextAlign.start,
                          ),
                          leading: CircleAvatar(
                            backgroundImage:
                                NetworkImage(snapshot.data!.docs[i]['img']),
                          ),
                        ),
                      ));
            }
            return Center(
              child: Text("error"),
            );
          }),
    );
  }
}

// old method

//   child: Column(
//          children:[
//            Center(child: Text(snapshot.data!.docs[i]['text'],textAlign: TextAlign.center,style: TextStyle(
//              fontSize: 45,fontWeight: FontWeight.w400
//            ),)),
//            Ink.image(image: NetworkImage(
//                 snapshot.data!.docs[i]['img']),
//                 child: InkWell(
//                      onTap: () async {
//                        html.window.open('https://paytm.com/online-payments', "_self");
//                        print("clicked");
//                      }
//                 ),
//                 height:MediaQuery.of(context).size.height,
//                 width: MediaQuery.of(context).size.width),
// Center(child: Text(snapshot.data!.docs[i]['desc'],textAlign: TextAlign.center,style: TextStyle(
//     fontSize: 30,fontWeight: FontWeight.w300)))
//           ]),
