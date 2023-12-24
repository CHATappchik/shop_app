import 'package:mobx/mobx.dart';
import 'package:card_swiper/card_swiper.dart';

part 'swiper_controller.g.dart';

class MySwiperController = _MySwiperController with _$MySwiperController;

abstract class _MySwiperController with Store {
  @observable
  SwiperController swiperController = SwiperController();

  @observable
  List<String> imagePathsList = [
    'assets/images/slider_1.png',
    'assets/images/slider_2.png',
    'assets/images/slider_3.png',
    'assets/images/slider_4.png',
  ];

  @observable
  List<String> secondSwiperList = [
    'assets/images/banner2.jpg',
    'assets/images/banner3.jpg',
    'assets/images/banner4.jpg',
    'assets/images/banner5.jpg',
  ];


  @action
  void updateSwiperController(SwiperController newController) {
    swiperController = newController;
  }
}