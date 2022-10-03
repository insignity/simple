// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../pages/auth/auth_store.dart' as _i10;
import '../../pages/favorites/favorites_store.dart' as _i5;
import '../../pages/profile/profile_store.dart' as _i11;
import '../../pages/restaurants/restaurants_store.dart' as _i6;
import '../../routing/guards/auth_guard.dart' as _i9;
import '../api/api.dart' as _i3;
import '../api/api_module.dart' as _i12;
import '../favorite/favorite_service.dart' as _i4;
import '../session/session_service.dart' as _i8;
import '../storage/storage_module.dart' as _i13;
import '../storage/storage_service.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final apiModule = _$ApiModule();
  final storageModule = _$StorageModule();
  gh.lazySingleton<_i3.Api>(() => apiModule.getClient());
  gh.lazySingleton<_i4.FavoriteService>(
      () => _i4.FavoriteService(get<_i3.Api>()));
  gh.factory<_i5.FavoritesStore>(
      () => _i5.FavoritesStore(get<_i3.Api>(), get<_i4.FavoriteService>()));
  gh.factory<_i6.RestaurantsStore>(
      () => _i6.RestaurantsStore(get<_i3.Api>(), get<_i4.FavoriteService>()));
  await gh.singletonAsync<_i7.StorageService>(() => storageModule.instance(),
      preResolve: true);
  gh.lazySingleton<_i8.SessionService>(
      () => _i8.SessionService(get<_i7.StorageService>()));
  gh.singleton<_i9.AuthGuard>(_i9.AuthGuard(get<_i8.SessionService>()));
  gh.factory<_i10.AuthStore>(
      () => _i10.AuthStore(get<_i8.SessionService>(), get<_i3.Api>()));
  gh.factory<_i11.ProfileStore>(
      () => _i11.ProfileStore(get<_i8.SessionService>()));
  return get;
}

class _$ApiModule extends _i12.ApiModule {}

class _$StorageModule extends _i13.StorageModule {}
