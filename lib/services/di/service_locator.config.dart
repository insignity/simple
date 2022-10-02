// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../pages/auth/auth_store.dart' as _i5;
import '../api/api.dart' as _i3;
import '../api/api_module.dart' as _i6;
import '../storage/storage_module.dart' as _i7;
import '../storage/storage_service.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final apiModule = _$ApiModule();
  final storageModule = _$StorageModule();
  gh.lazySingleton<_i3.Api>(() => apiModule.getClient());
  await gh.singletonAsync<_i4.StorageService>(() => storageModule.instance(),
      preResolve: true);
  gh.factory<_i5.AuthStore>(
      () => _i5.AuthStore(get<_i4.StorageService>(), get<_i3.Api>()));
  return get;
}

class _$ApiModule extends _i6.ApiModule {}

class _$StorageModule extends _i7.StorageModule {}
