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
      debugShowCheckedModeBanner: false,
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
          builder: (context, snapshot) {
            print(snapshot.error);
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.hasData){
            return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, i) => Container(
                  color: Colors.red,
    padding: EdgeInsets.all(10),
    child: Card(
      child:
      Image.network(snapshot.data!.docs[i]['img']),
    ),
                ));
            }
            return Center(
              child: Text("error"),
            );
          })
          ,
    ));
  }
}
//
// Future<Widget>_getImage(BuildContext context,String imgName) async {
//   Image image;
//   await FireStorageService.loadImage(context, imgName).then((value){
//     image = Image.network(
//       value.toString(),
//       fit: BoxFit.scaleDown,
//     );
//   });
//   return image;
// }
//
//
// class FireStorageService extends ChangeNotifier{
//    FireStorageService();
//    static Future<dynamic>loadImage(BuildContext context,String Image) async{
//      return await FirebaseStorage.instance.ref().child(Image).getDownloadURL();
//    }
// }

// class ImageLoader extends StatelessWidget {
//   const ImageLoader({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("ImageGetter"),
//       ),
//       body: FutureBuilder(
//         future: FireStoreDataBase().getData(),
//         builder: (context, snapshot) {
//           if (snapshot.hasError) {
//             return Text(
//               'Something went wrong',
//             );
//           }
//           if (snapshot.connectionState == ConnectionState.done) {
//             return Image.network(
//               snapshot.data.toString(),
//             );
//           }
//           return Center(
//             child: CircularProgressIndicator(),
//           );
//
//

// FutureBuilder(
// future: _getImage(context, "event_nss_hope.jpeg"),
// builder: (context,snapshot){
// if(snapshot.connectionState == ConnectionState.done){
// return Container(
// width: MediaQuery.of(context).size.width /1.2,
// height: MediaQuery.of(context).size.width /1.2,
// child: snapshot.data,
// );
// }
//
// if (snapshot.connectionState == ConnectionState.waiting){
// return Container(
// width: MediaQuery.of(context).size.width /1.2,
// height: MediaQuery.of(context).size.width /1.2,
// child: CircularProgressIndicator(),
// );
// }
// return Container();
// },
// ),
