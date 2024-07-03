import 'package:cloud_firestore/cloud_firestore.dart';

class dataBase {
  final CollectionReference notes =
      FirebaseFirestore.instance.collection('contact-details');

  Future<void> addDetails(String email, String service) {
    return notes.add({
      'e-mail': email,
      'service': service,
      'timestamp': Timestamp.now(),
    });
  }
}
