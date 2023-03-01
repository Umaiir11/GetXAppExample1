import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp4/View/ViewOpacity.dart';

import '../ViewModel/VmList.dart';

class ViewList extends StatefulWidget {
  const ViewList({Key? key}) : super(key: key);

  @override
  State<ViewList> createState() => _ViewListState();
}

class _ViewListState extends State<ViewList> {
  final VmLists l_VmList = Get.put(VmLists());
  void initState() {
    // TODO: implement initState
    Timer.periodic(Duration(milliseconds: 1), (timer) {
      l_VmList.Pr_num_TXT?.value++;

    });

  }



  @override
  Widget build(BuildContext context) {
    print("Widget Build");
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX States & Responsive "),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              Get.to(() => const ViewOp());
            },
          ),
        ],
      ),
      body: Stack(
        children: [

          Padding( padding: EdgeInsets.only(top: Get.height*0.02, left: Get.width*0.75),
            child: Obx(() {
              return Text("Timer ${l_VmList.number?.value}",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold));
            }),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [



            ],
          ),
          Padding(
              padding: EdgeInsets.only(top: Get.height * 0.070),
              child: Obx(() {
                return
                 ListView.builder(
                    itemCount: l_VmList.l_listfruits.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                            onTap: () {
                              if (l_VmList.l_favList.contains(
                                  l_VmList.l_listfruits[index].toString())) {
                                l_VmList.l_favList.remove(
                                    l_VmList.l_listfruits[index].toString());
                              } else {
                                l_VmList.l_favList.add(
                                    l_VmList.l_listfruits[index].toString());
                              }
                            },
                            title: Text(
                              l_VmList.l_listfruits[index].toString(),
                              style: TextStyle(fontSize: 25),
                            ),
                            trailing: Obx(() {
                              return Icon(
                                Icons.favorite,
                                color: l_VmList.l_favList.contains(
                                        l_VmList.l_listfruits[index].toString())
                                    ? Colors.red
                                    : Colors.white,
                              );
                            })),
                      );
                    },

                );
              })),

          Padding( padding:  EdgeInsets.only(top: Get.height * 0.400, left: Get.width * 0.7),
            child: Obx(() {
              return Visibility(
                visible: l_VmList.l_favList.isNotEmpty,
                child: Text("Timer ${l_VmList.number?.value}",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              );
            }),
          ),


          Padding(
            padding:
                EdgeInsets.only(top: Get.height * 0.400, left: Get.width * 0.2),
            child: Obx(() {
              return Visibility(
                visible: l_VmList.l_favList.isNotEmpty,
                child: Text("Favorites", style: TextStyle(fontSize: 20)),
              );
            }),
          ),
          Padding(
            padding: EdgeInsets.only(top: Get.height * 0.450),
            child: Obx(() {
              return ListView.builder(
                itemCount: l_VmList.l_favList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(
                        l_VmList.l_favList[index].toString(),
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  );
                },
              );
            }),
          )
        ],
      ),
    );
  }
}
