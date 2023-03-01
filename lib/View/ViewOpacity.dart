import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxapp4/ViewModel/VmOpacity.dart';

class ViewOp extends StatefulWidget {
  const ViewOp({Key? key}) : super(key: key);

  @override
  State<ViewOp> createState() => _ViewOpState();
}

class _ViewOpState extends State<ViewOp> {
  @override
  Vmopacity l_Vmopc = Get.put(Vmopacity());

  void initState() {
    // TODO: implement initState
    Timer.periodic(Duration(milliseconds: 1), (timer) {
      l_Vmopc.Pr_num_TXT?.value++;
    });
  }

  Widget build(BuildContext context) {
    print("Widget Build");
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX States & Responsive "),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                return Text(
                  l_Vmopc.switchbtn.isFalse ? "Show" : "Hide",
                  style: TextStyle(fontSize: 20),
                );
              }),
              Obx(() {
                return Switch(
                    value: l_Vmopc.switchbtn.value,
                    onChanged: (value) {
                      l_Vmopc.switchbtn.value = value;
                    });
              }),
              Column(
                children: [
                  Obx(() {
                    return Center(
                      child: Text("Timer ${l_Vmopc.number?.value}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    );
                  }),
                ],
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(
                top: Get.height * 0.040,
              ),
              child: Obx(() {
                return Visibility(
                  visible: l_Vmopc.switchbtn.value,
                  child: Container(
                    height: Get.height * 0.20,
                    width: Get.width * .90,
                    color: Colors.deepOrange
                        .withOpacity(l_Vmopc.Pr_opacity_COLOR.value),
                  ),
                );
              })),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Obx(() {
            return Visibility(
              visible: l_Vmopc.switchbtn.value,
              child: Slider(
                value: l_Vmopc.Pr_opacity_COLOR.value,
                onChanged: (value) {
                  l_Vmopc.Pr_opacity_COLOR.value = value;
                },
              ),
            );
          }),
          Padding(
            padding: EdgeInsets.only(
              top: Get.height * 0.070,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() {
                  return Text(
                    l_Vmopc.switchbtn2.isFalse ? "Show" : "Hide",
                    style: TextStyle(fontSize: 20),
                  );
                }),
                Obx(() {
                  return Switch(
                      value: l_Vmopc.switchbtn2.value,
                      onChanged: (value) {
                        l_Vmopc.switchbtn2.value = value;
                      });
                }),
                Column(
                  children: [
                    Obx(() {
                      return Center(
                        child: Text("Timer ${l_Vmopc.number?.value}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      );
                    }),
                  ],
                )
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(
                top: Get.height * 0.040,
              ),
              child: Obx(() {
                return Visibility(
                  visible: l_Vmopc.Pr_switch_BOOL2.value,
                  child: Container(
                    height: Get.height * 0.20,
                    width: Get.width * .90,
                    color: Colors.cyanAccent
                        .withOpacity(l_Vmopc.Pr_opacity_COLOR2.value),
                  ),
                );
              })),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Obx(() {
            return Visibility(
              visible: l_Vmopc.Pr_switch_BOOL2.value,
              child: Slider(
                value: l_Vmopc.Pr_opacity_COLOR2.value,
                onChanged: (value) {
                  l_Vmopc.Pr_opacity_COLOR2.value = value;
                },
              ),
            );
          }),
        ],
      ),
    );
  }
}
