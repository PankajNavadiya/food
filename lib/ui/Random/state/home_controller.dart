import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food/repos/home_repository.dart';
import 'package:food/routes/app_router.dart';
import 'package:food/utils/app_utils.dart';
import 'package:get/get.dart';

import '../../category/model/categoryData.dart';
import '../model/RandomData.dart';

class HomeController extends GetxController {
  final HomeRepository _homeRepository;

  HomeController(this._homeRepository);

  final _status = Rx(RxStatus.empty());
  RxStatus get status => _status.value;

  var _randomItem = RxList<GetRandomItem>();

  List<GetRandomItem> get randomItem => _randomItem.value;

  var _categoryItem = RxList<Categories>();

  List<Categories> get categoryItem => _categoryItem.value;

  @override
  void onClose() {}

  @override
  void onReady() {}

  @override
  void onInit() {

getRandomDataCall();


  }

   getRandomDataCall()async {
    print("object1");

    _status.value = RxStatus.loading();

    AppUtils.isConnected().then((intenet) async {
      if (intenet != null && intenet) {
        try {
          final response = await _homeRepository.getRandomCall();

          debugPrint("Response ******>$response");
          var obj = GetRandomData.fromJson(response);

          if (obj.meals != null) {
            _randomItem.value = obj.meals!;
            randomDataInsert(
              obj.meals![0].idMeal.toString(),
              obj.meals![0].idMeal.toString(),
              obj.meals![0].strCategory.toString(),
              obj.meals![0].strArea.toString(),
              obj.meals![0].strInstructions.toString(),
              obj.meals![0].strImageSource.toString(),
              obj.meals![0].strTags.toString(),
              obj.meals![0].strYoutube.toString(),
              obj.meals![0].strSource.toString(),
              obj.meals![0].strIngredient1.toString(),
              obj.meals![0].strIngredient2.toString(),
              obj.meals![0].strIngredient3.toString(),
              obj.meals![0].strIngredient4.toString(),
              obj.meals![0].strIngredient5.toString(),
              obj.meals![0].strIngredient6.toString(),
              obj.meals![0].strIngredient7.toString(),
              obj.meals![0].strIngredient8.toString(),
              obj.meals![0].strIngredient9.toString(),
              obj.meals![0].strIngredient10.toString(),
              obj.meals![0].strIngredient11.toString(),
              obj.meals![0].strIngredient12.toString(),
              obj.meals![0].strIngredient13.toString(),
              obj.meals![0].strIngredient14.toString(),
              obj.meals![0].strIngredient15.toString(),
              obj.meals![0].strIngredient16.toString(),
              obj.meals![0].strIngredient17.toString(),
              obj.meals![0].strIngredient18.toString(),
              obj.meals![0].strIngredient19.toString(),
              obj.meals![0].strIngredient20.toString(),
              obj.meals![0].strMeasure1.toString(),
              obj.meals![0].strMeasure2.toString(),
              obj.meals![0].strMeasure3.toString(),
              obj.meals![0].strMeasure4.toString(),
              obj.meals![0].strMeasure5.toString(),
              obj.meals![0].strMeasure6.toString(),
              obj.meals![0].strMeasure7.toString(),
              obj.meals![0].strMeasure8.toString(),
              obj.meals![0].strMeasure9.toString(),
              obj.meals![0].strMeasure10.toString(),
              obj.meals![0].strMeasure11.toString(),
              obj.meals![0].strMeasure12.toString(),
              obj.meals![0].strMeasure13.toString(),
              obj.meals![0].strMeasure14.toString(),
              obj.meals![0].strMeasure15.toString(),
              obj.meals![0].strMeasure16.toString(),
              obj.meals![0].strMeasure17.toString(),
              obj.meals![0].strMeasure18.toString(),
              obj.meals![0].strMeasure19.toString(),
              obj.meals![0].strMeasure20.toString(),
            );

            _status.value = RxStatus.success();

            print("object2");
          }
        } catch (e) {
          AppUtils.toastMessage(e.toString());
        }
      } else {
        AppUtils.toastMessage('Please Check Internet.');
      }
    });

  }

  Future<void> randomDataInsert(
    String rId,
    String rMeal,
    String rCategory,
    String rArea,
    String rInstruction,
    String rImage,
    String rTags,
    String rYoutube,
    String rSource,
    String rIngredient1,
    String rIngredient2,
    String rIngredient3,
    String rIngredient4,
    String rIngredient5,
    String rIngredient6,
    String rIngredient7,
    String rIngredient8,
    String rIngredient9,
    String rIngredient10,
    String rIngredient11,
    String rIngredient12,
    String rIngredient13,
    String rIngredient14,
    String rIngredient15,
    String rIngredient16,
    String rIngredient17,
    String rIngredient18,
    String rIngredient19,
    String rIngredient20,
    String rMeasure1,
    String rMeasure2,
    String rMeasure3,
    String rMeasure4,
    String rMeasure5,
    String rMeasure6,
    String rMeasure7,
    String rMeasure8,
    String rMeasure9,
    String rMeasure10,
    String rMeasure11,
    String rMeasure12,
    String rMeasure13,
    String rMeasure14,
    String rMeasure15,
    String rMeasure16,
    String rMeasure17,
    String rMeasure18,
    String rMeasure19,
    String rMeasure20,
  ) async {
    // insert record into firebase
    await FirebaseFirestore.instance.collection("fooddata").add({
      "rId": FieldValue.increment(1),
      "rMeal": rMeal,
      "rCategory": rCategory,
      "rArea": rArea,
      "rInstruction": rInstruction,
      "rImage": rImage,
      "rTags": rTags,
      "rYoutube": rYoutube,
      "rSource": rSource,
      "rIngredient1": rIngredient1,
      "rIngredient2": rIngredient2,
      "rIngredient3": rIngredient3,
      "rIngredient4": rIngredient4,
      "rIngredient5": rIngredient5,
      "rIngredient6": rIngredient6,
      "rIngredient7": rIngredient7,
      "rIngredient8": rIngredient8,
      "rIngredient9": rIngredient9,
      "rIngredient10": rIngredient10,
      "rIngredient11": rIngredient11,
      "rIngredient12": rIngredient12,
      "rIngredient13": rIngredient13,
      "rIngredient14": rIngredient14,
      "rIngredient15": rIngredient15,
      "rIngredient16": rIngredient16,
      "rIngredient17": rIngredient17,
      "rIngredient18": rIngredient18,
      "rIngredient19": rIngredient19,
      "rIngredient20": rIngredient20,
      "rMeasure1": rMeasure1,
      "rMeasure2": rMeasure2,
      "rMeasure3": rMeasure3,
      "rMeasure4": rMeasure4,
      "rMeasure5": rMeasure5,
      "rMeasure6": rMeasure6,
      "rMeasure7": rMeasure7,
      "rMeasure8": rMeasure8,
      "rMeasure9": rMeasure9,
      "rMeasure10": rMeasure10,
      "rMeasure11": rMeasure11,
      "rMeasure12": rMeasure12,
      "rMeasure13": rMeasure13,
      "rMeasure14": rMeasure14,
      "rMeasure15": rMeasure15,
      "rMeasure16": rMeasure16,
      "rMeasure17": rMeasure17,
      "rMeasure18": rMeasure18,
      "rMeasure19": rMeasure19,
      "rMeasure20": rMeasure20
    });
    print("GetRandomItem.id.to");
startTime();
    AppUtils.toastMessage("message");
  }

  Future<void> insert(int eid, String ename, String ecity, int esalary) async {
    // insert record into firebase
    await FirebaseFirestore.instance
        .collection("users")
        .add({'eid': eid, 'ename': ename, 'ecity': ecity, 'esalary': esalary});
  }

  getCategoryDataCall() async {
    AppUtils.isConnected().then((intenet) async {
      if (intenet != null && intenet) {
        try {
          final response = await _homeRepository.getCategoryCall();

          debugPrint("Response ******>$response");
          var obj = GetCategoryData.fromJson(response);

          if (obj.categories != null) {
            _categoryItem.value = obj.categories!;
            // categoryDataInsert(categoryid, category, categorydes, categoryimages);
          }
        } catch (e) {
          AppUtils.toastMessage(e.toString());
        }
      } else {
        AppUtils.toastMessage('Please Check Internet.');
      }
    });
  }

  categoryDataInsert(String categoryid, String category, String categorydes,
      String categoryimages) async {
    // insert record into firebase
    // await FirebaseFirestore.instance.collection("users").add({
    // 'categoryid': categoryid,
    // 'category': category,
    // 'categorydes': categorydes,
    // 'categoryimages': categoryimages
    // });
  }

  startTime() async {
                            var duration = const Duration(seconds: 6);
                            return Timer(
                                duration, route());
                          }



                          route(){
                            AppRouter.home();
                            
                          }
}
