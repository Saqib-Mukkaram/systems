import 'package:get/get.dart';

import 'WebSystem/ViewModels/WebHomeScreenViewModel.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WebHomeScreenViewModel());
  }
}
