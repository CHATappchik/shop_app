// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomeController, Store {
  late final _$currentNavIndexAtom =
      Atom(name: '_HomeController.currentNavIndex', context: context);

  @override
  Observable<int> get currentNavIndex {
    _$currentNavIndexAtom.reportRead();
    return super.currentNavIndex;
  }

  @override
  set currentNavIndex(Observable<int> value) {
    _$currentNavIndexAtom.reportWrite(value, super.currentNavIndex, () {
      super.currentNavIndex = value;
    });
  }

  late final _$_HomeControllerActionController =
      ActionController(name: '_HomeController', context: context);

  @override
  void updateIndex(int index) {
    final _$actionInfo = _$_HomeControllerActionController.startAction(
        name: '_HomeController.updateIndex');
    try {
      return super.updateIndex(index);
    } finally {
      _$_HomeControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentNavIndex: ${currentNavIndex}
    ''';
  }
}
