import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/instance_manager.dart';
import 'package:sign_in/controller/auth_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController());
  }
}
