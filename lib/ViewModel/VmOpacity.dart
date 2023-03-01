import 'package:get/get.dart';

class Vmopacity extends GetxController{

  RxDouble opacity = 0.5.obs;

  RxDouble get Pr_opacity_COLOR {
    return opacity;
  }
  set Pr_opacity_COLOR(RxDouble value) {
    Pr_opacity_COLOR = value;
  }

  RxDouble opacity2 = 0.3.obs;

  RxDouble get Pr_opacity_COLOR2 {
    return opacity2;
  }
  set Pr_opacity_COLOR2(RxDouble value) {
    Pr_opacity_COLOR = value;
  }

  RxBool switchbtn = false.obs;

  RxBool get Pr_switch_BOOL {
    return switchbtn;
  }

  set Pr_switch_BOOL(RxBool value) {
    Pr_switch_BOOL = value;
  }
RxBool switchbtn2 = false.obs;

  RxBool get Pr_switch_BOOL2 {
    return switchbtn2;
  }

  set Pr_switch_BOOL2(RxBool value) {
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