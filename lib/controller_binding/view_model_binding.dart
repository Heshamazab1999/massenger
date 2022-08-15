import 'package:get/get.dart';
import 'package:massenger/controller/base_controller.dart';
import 'package:massenger/controller/chat_controller.dart';

class ViewModelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
     Get.lazyPut<ChatController>(() => ChatController(), fenix: true);
  }
}
