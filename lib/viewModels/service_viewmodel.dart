import 'package:flutter/material.dart';
import '../models/service_models.dart';
import '../services/firestore_service.dart';

class ServiceViewModel extends ChangeNotifier {
  final FirestoreService _service = FirestoreService();
  List<ServiceModel> _services = [];

  List<ServiceModel> get services => _services;

  Future<void> loadServices() async {
    _services = await _service.fetchServices();
    notifyListeners();
  }
}
