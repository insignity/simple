// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_service.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SessionService on _SessionService, Store {
  Computed<bool>? _$isLoggedInComputed;

  @override
  bool get isLoggedIn =>
      (_$isLoggedInComputed ??= Computed<bool>(() => super.isLoggedIn,
              name: '_SessionService.isLoggedIn'))
          .value;

  late final _$_accessTokenAtom =
      Atom(name: '_SessionService._accessToken', context: context);

  AccessToken? get accessToken {
    _$_accessTokenAtom.reportRead();
    return super._accessToken;
  }

  @override
  AccessToken? get _accessToken => accessToken;

  @override
  set _accessToken(AccessToken? value) {
    _$_accessTokenAtom.reportWrite(value, super._accessToken, () {
      super._accessToken = value;
    });
  }

  late final _$_refreshTokenAtom =
      Atom(name: '_SessionService._refreshToken', context: context);

  RefreshToken? get refreshToken {
    _$_refreshTokenAtom.reportRead();
    return super._refreshToken;
  }

  @override
  RefreshToken? get _refreshToken => refreshToken;

  @override
  set _refreshToken(RefreshToken? value) {
    _$_refreshTokenAtom.reportWrite(value, super._refreshToken, () {
      super._refreshToken = value;
    });
  }

  late final _$_SessionServiceActionController =
      ActionController(name: '_SessionService', context: context);

  @override
  void updateAccessToken(AccessToken token) {
    final _$actionInfo = _$_SessionServiceActionController.startAction(
        name: '_SessionService.updateAccessToken');
    try {
      return super.updateAccessToken(token);
    } finally {
      _$_SessionServiceActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateRefreshToken(RefreshToken token) {
    final _$actionInfo = _$_SessionServiceActionController.startAction(
        name: '_SessionService.updateRefreshToken');
    try {
      return super.updateRefreshToken(token);
    } finally {
      _$_SessionServiceActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clear() {
    final _$actionInfo = _$_SessionServiceActionController.startAction(
        name: '_SessionService.clear');
    try {
      return super.clear();
    } finally {
      _$_SessionServiceActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoggedIn: ${isLoggedIn}
    ''';
  }
}
