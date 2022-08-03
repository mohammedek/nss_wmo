import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:nss_wmo/pages/home_screen.dart';

import '../widgets/FirebaseStoreDataBase.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

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
            body: ListView(
                physics: AlwaysScrollableScrollPhysics(),
                children: <Widget>[
                  Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    color: Colors.blueAccent[100],
                    child: SizedBox(
                        width: 300,
                        height: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child:Image.network('https://firebasestorage.googleapis.com/v0/b/nss-website-wmo.appspot.com/o/event_nss_hope.jpeg?alt=media&token=f4426f33-e5a2-4398-bae7-248c132a4e6b'
                            ),
                          ),
                        )),
                  Card(
                    elevation: 50,
                    shadowColor: Colors.black,
                    color: Colors.blueAccent[100],
                    child: SizedBox(
                      width: 300,
                      height: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image(
                          image: NetworkImage(
                            "https://firebasestorage.googleapis.com/v0/b/nss-website-wmo.appspot.com/o/%E2%80%94Pngtree%E2%80%94indian%20ten%20rupee%20coin%20vector_8133288.png?alt=media&token=2ec8cdd7-f872-4ed4-b727-cc0d2eea1431",
                          ),
                        ),
                      ),
                    ),
                  )
                ])));
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
        builder: (context,snapshot){
    if (snapshot.hasError) {
      return Text('Something went wrong',);
    }
    if (snapshot.connectionState == ConnectionState.done){
      return Image.network(snapshot.data.toString(),
      );
    }
    return Center(child: CircularProgressIndicator(),);
        },
      ),
    );
  }
}


