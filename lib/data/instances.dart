import 'package:get_it/get_it.dart';
import 'package:posapp/repositories/auth/auth_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/cache/customer_cache.dart';
import '../repositories/auth/auth_repo_impl.dart';

final getIt = GetIt.instance;

configurableDependencies() {
  getIt.registerLazySingletonAsync<SharedPreferences>(
      () async => await SharedPreferences.getInstance());

  getIt.registerLazySingleton<CustomerCache>(
          () => CustomerCache(sharedPreferences: getIt<SharedPreferences>()));
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());
}
