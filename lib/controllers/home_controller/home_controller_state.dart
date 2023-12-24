import 'package:mobx/mobx.dart';

part 'home_controller_state.g.dart';

class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  @observable
  Observable<int> currentNavIndex = Observable<int>(0);

  @action
  void updateIndex(int index) {
    currentNavIndex.value = index;
  }
}