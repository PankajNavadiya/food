import 'package:get/get.dart';
import 'app_page.dart';

class AppRouter {
  static home() {
    Get.offAllNamed(Routes.HOME);
  }

  static category() {
    Get.toNamed(Routes.CATEGORY);
  }

  // static forgot() {
  //   Get.toNamed(Routes.FORGOT);
  // }

  // static verifyOtp(
  //     String valflag, String emails, String mobile, String countryCode) {
  //   Get.toNamed(Routes.VERIFYOTP, arguments: {
  //     "flag": valflag,
  //     "email": emails,
  //     "mobile": mobile,
  //     "countryCode": countryCode
  //   });
  // }

  // static changePass() {
  //   Get.toNamed(Routes.CHANGE_PASS);
  // }

  // static home() {
  //   Get.offAllNamed(Routes.HOME);
  // }

  // static intro() {
  //   Get.offAndToNamed(Routes.INTRO);
  // }

  // static jobDetail(GetJobItem item) {
  //   Get.toNamed(Routes.JOBDETAIL, arguments: {"item": item});
  // }

  // static editProfile() {
  //   Get.toNamed(Routes.EDIT_PROFILE);
  // }

  // static jobViewAfterHiredRoute(GetJobItem item) {
  //   Get.toNamed(Routes.JOB_VIEW_AFTER_HIRE, arguments: {"item": item});
  // }

  // static emailVerify() {
  //   Get.toNamed(Routes.EMAIL_VERIFY);
  // }

  // static accountChange() {
  //   Get.toNamed(Routes.ACCOUNT_CHANGE);
  // }

  // static changeMobile() {
  //   Get.toNamed(Routes.CHANGE_MOBILE);
  // }

  // static changeMobileVerify(String mobile, String countryCode) {
  //   Get.toNamed(Routes.CHANGE_MOBILE_VERIFY,
  //       arguments: {"mobile": mobile, "countryCode": countryCode});
  // }

  // static jobApplicants(String i) {
  //   Get.toNamed(Routes.JOB_APPLICANTS, arguments: {"job_id": i});
  // }

  // static jobApplierProfile(GetJobApplicantsItem item,String applierName) {
  //   Get.toNamed(Routes.JOB_APPLIER_PROFILE, arguments: {"item": item, "applierName": applierName,});
  // }

  // static ViewAllJobRoute() {
  //   Get.toNamed(Routes.VIEW_ALL_JOB);
  // }

  // static jobViewRoute(GetJobItem item) {
  //   Get.toNamed(Routes.JOB_VIEW, arguments: {"item": item});
  // }

  // static workHistoryRoute(String i) {
  //   Get.toNamed(Routes.WORK_HISTORY, arguments: {"user_id": i});
  // }

  // static writeReviewRoute(GetJobItem item) {
  //   Get.toNamed(Routes.WRITE_REVIEW, arguments: {"item": item});
  // }

  // static chatRoute() {
  //   Get.toNamed(Routes.CHAT);
  // }

  // static chatViewRoute(String userId, String name,String image) {
  //   Get.toNamed(Routes.CHAT_VIEW, arguments: {
  //     "receiver": userId,
  //     "name": name,
  //     "image":image,
  //   });
  // }

  // static settingRoute() {
  //   Get.toNamed(Routes.SETTING);
  // }

  // static notificationSettingRoute() {
  //   Get.toNamed(Routes.NOTIFICATION_SETTING);
  // }

  // static editJobRoute(String item) {
  //   Get.toNamed(Routes.EDIT_JOB_ROUTE, arguments: {"id": item});
  // }

// static newsDetail(BuildContext context, int postId, String category) {
//   // Get.toNamed(Routes.NEWS_DETAIL, arguments: {"id": id});
//   Navigator.push(
//       context,
//       PageRouteBuilder(
//         pageBuilder: (context, animation, secondaryAnimation) =>
//             NewsDetailRoute(
//           id: postId,
//           category: category,
//         ),
//         transitionsBuilder: (context, animation, secondaryAnimation, child) {
//           return child;
//         },
//       ));
// }

}
