import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

import '../utils/constants.dart';

class HomeProvider extends GetConnect{

  @override
  void onInit() {
    super.onInit();

    httpClient.baseUrl = Constants.baseUrl;
    httpClient.timeout = const Duration(minutes: 1);

    httpClient.addRequestModifier((Request request) async {
   
      return request;
    });
  }


  Future<Response> getRandom(request) async => await post('random.php',request);

 // Future<Response> addApplyJob(request) async => await post('job/ApplyJob',request);




  
}