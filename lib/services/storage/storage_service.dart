import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:simple/models/models.dart';

class StorageService {
  final Box _box;

  StorageService(this._box);

  RefreshToken? get refreshToken {
    final value = _box.get('refreshToken');
    return value != null ? RefreshToken.fromJson(json.decode(value)) : null;
  }

  set refreshToken(RefreshToken? value) {
    _box.put('refreshToken', value != null ? json.encode(value.toJson()) : null);
  }

  AccessToken? get accessToken {
    final value = _box.get('accessToken');
    return value != null ? AccessToken.fromJson(json.decode(value)) : null;
  }

  set accessToken(AccessToken? value) {
    _box.put('accessToken', value != null ? json.encode(value.toJson()) : null);
  }
}
