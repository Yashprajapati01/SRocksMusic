import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/service_models.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<ServiceModel>> fetchServices() async {
    final snapshot = await _db.collection('services').get();
    return snapshot.docs.map((doc) => ServiceModel.fromMap(doc.data())).toList();
  }
}
