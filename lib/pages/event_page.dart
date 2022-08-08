
import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:nss_wmo/pages/home_screen.dart';

import '../widgets/FirebaseStoreDataBase.dart';
 class EventPage extends StatefulWidget {
   const EventPage({Key? key}) : super(key: key);

   @override
   State<EventPage> createState() => _EventPageState();
 }

 class _EventPageState extends State<EventPage> {
   @override
   Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back)),
          title: Text('NSS Daily Events'),
        ),
        body: StreamBuilder<QuerySnapshot>(
          // Renders every post from the Firebase Firestore Database.
            stream: FirebaseFirestore.instance.collection("events").snapshots(),
            builder:
                (BuildContext context,
                AsyncSnapshot snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator(
                );
              }

              return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                   return ListTile(
                      // Renders the title on every single listview.
                      title: new Text(snapshot.data('name')),
                      leading: new Image.network(snapshot.data('img')),
                    );
                  });
            }
        ),
      ),
    );
  }
}



class ImageLoader extends StatelessWidget {
  const ImageLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ImageGetter"),
      ),
      body: FutureBuilder(
        future: FireStoreDataBase().getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text(
              'Something went wrong',
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Image.network(
              snapshot.data.toString(),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
