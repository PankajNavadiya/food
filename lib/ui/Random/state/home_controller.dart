import 'package:flutter/material.dart';
import 'package:food/repos/home_repository.dart';
import 'package:food/utils/app_utils.dart';
import 'package:get/get.dart';

import '../../category/model/categoryData.dart';
import '../model/RandomData.dart';

class HomeController extends GetxController {
  HomeRepository _homeRepository;

  HomeController(this._homeRepository);

  // final _workHistoryList = GetRandomItem().obs;
  // GetRandomItem get workHistoryList => _workHistoryList.value; //

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
    // FirebaseAuth auth = FirebaseAuth.instance;

    getRandomDataCall();
    getCategoryDataCall();
  }

  getRandomDataCall() async {
    AppUtils.isConnected().then((intenet) async {
      if (intenet != null && intenet) {
        try {
          final response = await _homeRepository.getRandomCall();

          debugPrint("Response ******>$response");
          var obj = GetRandomData.fromJson(response);

          if (obj.meals != null) {
            _randomItem.value = obj.meals!;

            //  randomDataInsert(eid, ename, ecity, esalary);
          }
        } catch (e) {
          AppUtils.toastMessage(e.toString());
        }
      } else {
        AppUtils.toastMessage('Please Check Internet.');
      }
    });
  }

  randomDataInsert(
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
    // await FirebaseFirestore.instance.collection("users").add({
    //  "rId"= rId,
    //  "rMeal"= rMeal,
    //  "rCategory"= rCategory,
    //  "rArea"= rArea,
    //  "rInstruction"= rInstruction,
    //  "rImage"= rImage,
    //  "rTags"= rTags,
    //  "rYoutube"= rYoutube,
    //  "rSource"= rSource,
    //  "rIngredient1"= rIngredient1,
    //  "rIngredient2"= rIngredient2,
    //  "rIngredient3"= rIngredient3,
    //  "rIngredient4"= rIngredient4,
    //  "rIngredient5"= rIngredient5,
    //  "rIngredient6"= rIngredient6,
    //  "rIngredient7"= rIngredient7,
    //  "rIngredient8"= rIngredient8,
    //  "rIngredient9"= rIngredient9,
    //  "rIngredient10"= rIngredient10,
    //  "rIngredient11"= rIngredient11,
    //  "rIngredient12"= rIngredient12,
    //  "rIngredient13"= rIngredient13,
    //  "rIngredient14"= rIngredient14,
    //  "rIngredient15"= rIngredient15,
    //  "rIngredient16"= rIngredient16,
    //  "rIngredient17"= rIngredient17,
    //  "rIngredient18"= rIngredient18,
    //  "rIngredient19"= rIngredient19,
    //  "rIngredient20"= rIngredient20,
    //  "rMeasure1"= rMeasure1,
    //  "rMeasure2"= rMeasure2,
    //  "rMeasure3"= rMeasure3,
    //  "rMeasure4"= rMeasure4,
    //  "rMeasure5"= rMeasure5,
    //  "rMeasure6"= rMeasure6,
    //  "rMeasure7"= rMeasure7,
    //  "rMeasure8"= rMeasure8,
    //  "rMeasure9"= rMeasure9,
    //  "rMeasure10"= rMeasure10,
    //  "rMeasure11"= rMeasure11,
    //  "rMeasure12"= rMeasure12,
    //  "rMeasure13"= rMeasure13,
    //  "rMeasure14"= rMeasure14,
    //  "rMeasure15"= rMeasure15,
    //  "rMeasure16"= rMeasure16,
    //  "rMeasure17"= rMeasure17,
    //  "rMeasure18"= rMeasure18,
    //  "rMeasure19"= rMeasure19,
    //  "rMeasure20"= rMeasure20
    // });
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
}
