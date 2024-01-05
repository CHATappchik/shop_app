// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_service_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthService on _AuthService, Store {
  late final _$currentUserAtom =
      Atom(name: '_AuthService.currentUser', context: context);

  @override
  User? get currentUser {
    _$currentUserAtom.reportRead();
    return super.currentUser;
  }

  @override
  set currentUser(User? value) {
    _$currentUserAtom.reportWrite(value, super.currentUser, () {
      super.currentUser = value;
    });
  }

  late final _$loginUserAsyncAction =
      AsyncAction('_AuthService.loginUser', context: context);

  @override
  Future<dynamic> loginUser(
      {dynamic email, dynamic password, dynamic context}) {
    return _$loginUserAsyncAction.run(() =>
        super.loginUser(email: email, password: password, context: context));
  }

  late final _$storeUserDataAsyncAction =
      AsyncAction('_AuthService.storeUserData', context: context);

  @override
  Future<void> storeUserData({dynamic name, dynamic password, dynamic email}) {
    return _$storeUserDataAsyncAction.run(() =>
        super.storeUserData(name: name, password: password, email: email));
  }

  late final _$loguotMetodAsyncAction =
      AsyncAction('_AuthService.loguotMetod', context: context);

  @override
  Future<void> loguotMetod(dynamic context) {
    return _$loguotMetodAsyncAction.run(() => super.loguotMetod(context));
  }

  @override
  String toString() {
    return '''
currentUser: ${currentUser}
    ''';
  }
}
