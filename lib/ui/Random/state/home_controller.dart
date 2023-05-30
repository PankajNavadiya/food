import 'package:flutter/material.dart';
import 'package:food/repos/home_repository.dart';
import 'package:food/utils/app_utils.dart';
import 'package:get/get.dart';

import '../model/RandomData.dart';

class HomeController extends GetxController {
  HomeRepository _homeRepository;

  HomeController(this._homeRepository);

  final _workHistoryList = GetRandomItem().obs;
  GetRandomItem get workHistoryList => _workHistoryList.value; //

  var _randomItem = RxList<GetRandomItem>();

  List<GetRandomItem> get randomItem => _randomItem.value;

  @override
  void onClose() {}

  @override
  void onReady() {}

  @override
  void onInit() {
    getRandomDataCall();
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
          }
        } catch (e) {
          AppUtils.toastMessage(e.toString());
        }
      } else {
        AppUtils.toastMessage('Please Check Internet.');
      }
    });
  }
}
