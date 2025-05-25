import 'package:get_it/get_it.dart';
import 'services/firestore_service.dart';
import 'viewModels/service_viewmodel.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<FirestoreService>(() => FirestoreService());
  locator.registerFactory<ServiceViewModel>(() => ServiceViewModel());
}
