import 'package:get/get.dart';

class VmLists extends GetxController {
  RxList<String> l_listfruits = ["Apple", "Banana", "Orange", "Strawberry"].obs;
  RxList l_favList = [].obs;

  RxBool switchbtn = false.obs;

  RxBool get Pr_switch_BOOL {
    return switchbtn;
  }

  set Pr_switch_BOOL(RxBool value) {
    Pr_switch_BOOL = value;
  }


  RxInt? number = 1.obs;

  RxInt? get Pr_num_TXT {
    return number;
  }
  set Pr_num_TXT(RxInt? value) {
    Pr_num_TXT = value;
  }

}
