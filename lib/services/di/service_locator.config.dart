// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../pages/auth/auth_store.dart' as _i8;
import '../../pages/profile/profile_store.dart' as _i9;
import '../../pages/restaurants/restaurants_store.dart' as _i4;
import '../../routing/guards/auth_guard.dart' as _i7;
import '../api/api.dart' as _i3;
import '../api/api_module.dart' as _i10;
import '../session/session_service.dart' as _i6;
import '../storage/storage_module.dart' as _i11;
import '../storage/storage_service.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final apiModule = _$ApiModule();
  final storageModule = _$StorageModule();
  gh.lazySingleton<_i3.Api>(() => apiModule.getClient());
  gh.factory<_i4.RestaurantsStore>(() => _i4.RestaurantsStore(get<_i3.Api>()));
  await gh.singletonAsync<_i5.StorageService>(() => storageModule.instance(),
      preResolve: true);
  gh.lazySingleton<_i6.SessionService>(
      () => _i6.SessionService(get<_i5.StorageService>()));
  gh.singleton<_i7.AuthGuard>(_i7.AuthGuard(get<_i6.SessionService>()));
  gh.factory<_i8.AuthStore>(
      () => _i8.AuthStore(get<_i6.SessionService>(), get<_i3.Api>()));
  gh.factory<_i9.ProfileStore>(
      () => _i9.ProfileStore(get<_i6.SessionService>()));
  return get;
}

class _$ApiModule extends _i10.ApiModule {}

class _$StorageModule extends _i11.StorageModule {}
