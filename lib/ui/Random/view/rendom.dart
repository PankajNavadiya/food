import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../state/home_controller.dart';

class RendomPage extends GetView<HomeController> {
  const RendomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CupertinoButton(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text("Rendom Page"),
        actions: [
          CupertinoButton(
            child: Icon(
              Icons.refresh_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              controller.getRandomDataCall();
            },
          )
        ],
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: 
            Obx(
               () {
                return Container(height: 500,width: 300,
                  child: ListView.builder(itemCount: controller.randomItem.length,shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(controller.randomItem[index].strInstructions.toString(),style: TextStyle(color: Colors.black),),
                        ],
                      );
                    },
                  ),
                );
              }
            ),
       
      ),
    );
  }
}
