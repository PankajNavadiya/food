import 'package:flutter/material.dart';

import '../provider/home_provider.dart';
import 'base_repository.dart';


class HomeRepository extends BaseRepository{
  final HomeProvider _provider;

  HomeRepository(this._provider);

  Future getRandomCall({request}) async {
    debugPrint("Request ******>$request");
    return await processResult(await _provider.getRandom(request));
  }

    Future getCategoryCall({request}) async {
    debugPrint("Request ******>$request");
    return await processResult(await _provider.getCategory(request));
  }

  // Future addSavedJobCall({request}) async {
  //   debugPrint("Request ******>$request");
  //   return await processResult(await _provider.addSavedJob(request));
  // }

  // Future addApplyJobCall({request}) async {
  //   debugPrint("Request ******>$request");
  //   return await processResult(await _provider.addApplyJob(request));
  // }

  //  Future deletedJobCall({request}) async {
  //   debugPrint("Request ******>$request");
  //   return await processResult(await _provider.deletedJob(request));
  // }

  // Future getMyJobsCall({request}) async {
  //   debugPrint("Request ******>$request");
  //   return await processResult(await _provider.getMyJobs(request));
  // }
}