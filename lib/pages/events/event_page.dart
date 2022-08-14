import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nss_wmo/data/firebase_db.dart';

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
                          color: Colors.white54,
                          padding: EdgeInsets.all(10),
                          child:(
                            Card(
                              child: Image.network(
                                  snapshot.data!.docs[i]['img'],
                                  fit: BoxFit.contain,
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width),
                            )),
                          ));
            }
            return Center(
              child: Text("error"),
            );
          }),
    );
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
