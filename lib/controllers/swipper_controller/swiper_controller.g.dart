// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swiper_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MySwiperController on _MySwiperController, Store {
  late final _$swiperControllerAtom =
      Atom(name: '_MySwiperController.swiperController', context: context);

  @override
  SwiperController get swiperController {
    _$swiperControllerAtom.reportRead();
    return super.swiperController;
  }

  @override
  set swiperController(SwiperController value) {
    _$swiperControllerAtom.reportWrite(value, super.swiperController, () {
      super.swiperController = value;
    });
  }

  late final _$imagePathsListAtom =
      Atom(name: '_MySwiperController.imagePathsList', context: context);

  @override
  List<String> get imagePathsList {
    _$imagePathsListAtom.reportRead();
    return super.imagePathsList;
  }

  @override
  set imagePathsList(List<String> value) {
    _$imagePathsListAtom.reportWrite(value, super.imagePathsList, () {
      super.imagePathsList = value;
    });
  }

  late final _$_MySwiperControllerActionController =
      ActionController(name: '_MySwiperController', context: context);

  @override
  void updateSwiperController(SwiperController newController) {
    final _$actionInfo = _$_MySwiperControllerActionController.startAction(
        name: '_MySwiperController.updateSwiperController');
    try {
      return super.updateSwiperController(newController);
    } finally {
      _$_MySwiperControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
swiperController: ${swiperController},
imagePathsList: ${imagePathsList}
    ''';
  }
}
