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
        child: Obx(() {
          return ListView.builder(
        itemCount: controller.randomItem.length,
        itemBuilder: (context, index) {
          final item = controller.randomItem[index];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  Text("id - ${item.idMeal}"),
                  Text("category - ${item.strCategory}"),
                  Text("area - ${item.strArea}"),
                  CupertinoButton(
                    child: Text("Refresh"), onPressed: () {
                      controller.randomDataInsert(
                        item.idMeal.toString(), 
                        item.idMeal.toString(), 
                        item.strCategory.toString(), 
                        item.strArea.toString(), 
                        item.strInstructions.toString(), 
                        item.strImageSource.toString(), 
                        item.strTags.toString(), 
                        item.strYoutube.toString(), 
                        item.strSource.toString(), 
                        item.strIngredient1.toString(), 
                        item.strIngredient2.toString(), 
                        item.strIngredient3.toString(), 
                        item.strIngredient4.toString(), 
                        item.strIngredient5.toString(), 
                        item.strIngredient6.toString(), 
                        item.strIngredient7.toString(), 
                        item.strIngredient8.toString(), 
                        item.strIngredient9.toString(), 
                        item.strIngredient10.toString(), 
                        item.strIngredient11.toString(), 
                        item.strIngredient12.toString(), 
                        item.strIngredient13.toString(), 
                        item.strIngredient14.toString(), 
                        item.strIngredient15.toString(), 
                        item.strIngredient16.toString(), 
                        item.strIngredient17.toString(), 
                        item.strIngredient18.toString(), 
                        item.strIngredient19.toString(), 
                        item.strIngredient20.toString(), 
                        item.strMeasure1.toString(),
                        item.strMeasure2.toString(),
                        item.strMeasure3.toString(),
                        item.strMeasure4.toString(),
                        item.strMeasure5.toString(),
                        item.strMeasure6.toString(),
                        item.strMeasure7.toString(),
                        item.strMeasure8.toString(),
                        item.strMeasure9.toString(),
                        item.strMeasure10.toString(),
                        item.strMeasure11.toString(),
                        item.strMeasure12.toString(),
                        item.strMeasure13.toString(),
                        item.strMeasure14.toString(),
                        item.strMeasure15.toString(),
                        item.strMeasure16.toString(),
                        item.strMeasure17.toString(),
                        item.strMeasure18.toString(),
                        item.strMeasure19.toString(),
                        item.strMeasure20.toString(),
                      );
                    },
                  )
                ],
              ),
            ),
          );
        },
      );
        }),
      ),
    );
  }
}
