import 'package:flutter/material.dart';
import 'package:nss_wmo/pages/home_screen.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: ElevatedButton(
                  onPressed: () {
                    print("pressed");
                  },
                  child: Icon(Icons.arrow_back_rounded)),
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
                          child: Image(
                            image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/NSS-symbol.jpeg/480px-NSS-symbol.jpeg",
                            ),
                          ),
                        )),
                  ),
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
                            "https://static9.depositphotos.com/1431107/1154/i/450/depositphotos_11542091-stock-photo-sample-stamp.jpg",
                          ),
                        ),
                      ),
                    ),
                  )
                ])));
  }
}
