import 'package:get/get.dart';
import 'package:portfolio/routing/routes.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();

  RxString activePage = HomeRoute.obs;
  RxString hoverPage = ''.obs;

  void changePage(String route) => activePage.value = route;
  void changeHover(String route) {
    if (route != activePage.value) {
      hoverPage.value = route;
    }
  }
}
