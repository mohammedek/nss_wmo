import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseDB {
  static CollectionReference<Map<String, dynamic>> events =
      FirebaseFirestore.instance.collection("events");

  /// ....
  /// ....
}
