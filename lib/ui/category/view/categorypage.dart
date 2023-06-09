import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/ui/Random/state/home_controller.dart';
import 'package:get/get.dart';

class CatogaryPage extends GetView<HomeController> {
  const CatogaryPage({super.key});

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
        title: Text("Category Page"),
        actions: [
          CupertinoButton(
            child: Icon(
              Icons.refresh_rounded,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
          child: ListView.builder(
        itemCount: controller.categoryItem.length,
        itemBuilder: (context, index) {
          final item = controller.categoryItem[index];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  Text("id - ${item.idCategory}"),
                  Text("category - ${item.strCategory}"),
                  Text("descripition - ${item.strCategoryDescription}")
                ],
              ),
            ),
          );
        },
      )),
    );
  }
}
