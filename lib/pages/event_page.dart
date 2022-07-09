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
                  child: Icon(Icons.arrow_back_ios_new_rounded)),
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
                          child:Image.network('event_nss_hope.jpeg'
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
                            "—Pngtree—indian ten rupee coin vector_8133288.png",
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


