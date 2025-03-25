import 'package:get/get.dart';
import 'package:online_shop_ai/utils/helpers/network_manager.dart';

class GeneralBindings extends Bindings{

  @override
  void dependencies(){
    Get.put(NetworkManager());
  }
}