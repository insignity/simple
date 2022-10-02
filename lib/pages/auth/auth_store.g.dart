// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthStore on _AuthStore, Store {
  Computed<bool>? _$_isLoggedInComputed;

  @override
  bool get _isLoggedIn =>
      (_$_isLoggedInComputed ??= Computed<bool>(() => super._isLoggedIn,
              name: '_AuthStore._isLoggedIn'))
          .value;

  late final _$_stepAtom = Atom(name: '_AuthStore._step', context: context);

  AuthStep get step {
    _$_stepAtom.reportRead();
    return super._step;
  }

  @override
  AuthStep get _step => step;

  @override
  set _step(AuthStep value) {
    _$_stepAtom.reportWrite(value, super._step, () {
      super._step = value;
    });
  }

  late final _$loginAsyncAction =
      AsyncAction('_AuthStore.login', context: context);

  @override
  Future<dynamic> login({required String email, required String password}) {
    return _$loginAsyncAction
        .run(() => super.login(email: email, password: password));
  }

  late final _$registerAsyncAction =
      AsyncAction('_AuthStore.register', context: context);

  @override
  Future<dynamic> register(
      {required String email,
      required String phone,
      required String nickname,
      required String password}) {
    return _$registerAsyncAction.run(() => super.register(
        email: email, phone: phone, nickname: nickname, password: password));
  }

  late final _$_AuthStoreActionController =
      ActionController(name: '_AuthStore', context: context);

  @override
  dynamic changeStep() {
    final _$actionInfo =
        _$_AuthStoreActionController.startAction(name: '_AuthStore.changeStep');
    try {
      return super.changeStep();
    } finally {
      _$_AuthStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
