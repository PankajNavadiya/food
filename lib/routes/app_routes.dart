part of 'app_page.dart';

abstract class Routes {
  Routes._();

  static const id = 0;

  static const HOME = _Paths.HOME;
  static const SPLASH = _Paths.SPLASH;
  static const INTRO = _Paths.INTRO;
  static const LOGIN = _Paths.LOGIN;
  static const SIGNUP = _Paths.SIGNUP;
  static const FORGOT = _Paths.FORGOT;
  static const VERIFYOTP = _Paths.VERIFYOTP;
  static const CHANGE_PASS = _Paths.CHANGE_PASS;
  static const ADD_POST = _Paths.ADD_POST;
  static const JOBDETAIL = _Paths.JOBDETAIL;
  static const EDIT_PROFILE = _Paths.EDIT_PROFILE;
  static const EMAIL_VERIFY = _Paths.EMAIL_VERIFY;
  static const ACCOUNT_CHANGE = _Paths.ACCOUNT_CHANGE;
  static const CHANGE_MOBILE = _Paths.CHANGE_MOBILE;
  static const CHANGE_MOBILE_VERIFY = _Paths.CHANGE_MOBILE_VERIFY;
  static const JOB_APPLICANTS = _Paths.JOB_APPLICANTS;
  static const JOB_APPLIER_PROFILE = _Paths.JOB_APPLIER_PROFILE;
  static const VIEW_ALL_JOB = _Paths.VIEW_ALL_JOB;
  static const JOB_VIEW = _Paths.JOB_VIEW;
  static const JOB_VIEW_AFTER_HIRE = _Paths.JOB_VIEW_AFTER_HIRE;
  static const WORK_HISTORY = _Paths.WORK_HISTORY;
  static const WRITE_REVIEW = _Paths.WRITE_REVIEW;
  static const CHAT = _Paths.CHAT;
  static const CHAT_VIEW = _Paths.CHAT_VIEW;
  static const SETTING = _Paths.SETTING;
  static const NOTIFICATION_SETTING = _Paths.NOTIFICATION_SETTING;
  static const EDIT_JOB_ROUTE = _Paths.EDIT_JOB_ROUTE;

//   static const SHOP_PRODUCTS = _Paths.SHOP_PRODUCTS;
// //   static const EVENTS = _Paths.EVENTS;
// //   static const NEWS_FEED = _Paths.NEWS_FEED;
//   static const SETTINGS = _Paths.SETTINGS;
// //   static const NEWS_DETAIL = _Paths.NEWS_DETAIL;
//   static const SHOP_CATEGORY = _Paths.SHOP_CATEGORY;
//   static const SHOP_DETAIL = _Paths.SHOP_DETAIL;
//   static const EVENT_DETAIL = _Paths.EVENT_DETAIL;
}

abstract class _Paths {
  _Paths._();

  static const HOME = '/home';
  static const SPLASH = '/splash';
  static const INTRO = '/intro';
  static const LOGIN = '/login';
  static const SIGNUP = '/signup';
  static const FORGOT = '/forgot';
  static const VERIFYOTP = '/verify-otp';
  static const CHANGE_PASS = '/change-pass';
  static const ADD_POST = '/add-post';
  static const JOBDETAIL = '/job-detail';
  static const EDIT_PROFILE = '/edit-profile';
  static const EMAIL_VERIFY = '/email-verify';
  static const ACCOUNT_CHANGE = '/account-change';
  static const CHANGE_MOBILE = '/change-mobile';
  static const CHANGE_MOBILE_VERIFY = '/change-mobile-verify';
  static const JOB_APPLICANTS = '/job-applicants';
  static const JOB_APPLIER_PROFILE = '/job-applier-profile';
  static const VIEW_ALL_JOB = '/view-all-job';
  static const JOB_VIEW = '/job-view';
  static const JOB_VIEW_AFTER_HIRE = '/job-view-after-hire';
  static const WORK_HISTORY = '/work-history';
  static const WRITE_REVIEW = '/write-review';
  static const CHAT = '/chat';
  static const CHAT_VIEW = '/chat-view';
  static const SETTING = '/setting';
  static const NOTIFICATION_SETTING = '/notification-setting';
  static const EDIT_JOB_ROUTE = '/edit-job';


// static const SHOP_PRODUCTS = '/shop-products';
// // static const EVENTS = '/events';
// // static const NEWS_FEED = '/news-feed';
// static const SETTINGS = '/settings';
// // static const NEWS_DETAIL = '/news-detail';
// static const SHOP_CATEGORY = '/shop-category';
// static const SHOP_DETAIL = '/shop-detail';
// static const EVENT_DETAIL = '/event-detail';
}
