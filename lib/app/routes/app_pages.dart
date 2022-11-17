import 'package:get/get.dart';

import '../modules/ClientDetails/bindings/client_details_binding.dart';
import '../modules/ClientDetails/views/client_details_view.dart';
import '../modules/Eight_Page/bindings/eight_page_binding.dart';
import '../modules/Eight_Page/views/eight_page_view.dart';
import '../modules/Fifth_page/bindings/fifth_page_binding.dart';
import '../modules/Fifth_page/views/fifth_page_view.dart';
import '../modules/Fourth_Page/bindings/fourth_page_binding.dart';
import '../modules/Fourth_Page/views/fourth_page_view.dart';
import '../modules/Seventh_Page/bindings/seventh_page_binding.dart';
import '../modules/Seventh_Page/views/seventh_page_view.dart';
import '../modules/Sixth_Page/bindings/sixth_page_binding.dart';
import '../modules/Sixth_Page/views/sixth_page_view.dart';
import '../modules/Third_Page/bindings/third_page_binding.dart';
import '../modules/Third_Page/views/third_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/second_page/bindings/second_page_binding.dart';
import '../modules/second_page/views/second_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SECOND_PAGE,
      page: () => SecondPageView(),
      binding: SecondPageBinding(),
    ),
    GetPage(
      name: _Paths.THIRD_PAGE,
      page: () => const ThirdPageView(),
      binding: ThirdPageBinding(),
    ),
    GetPage(
      name: _Paths.FOURTH_PAGE,
      page: () => const FourthPageView(),
      binding: FourthPageBinding(),
    ),
    GetPage(
      name: _Paths.FIFTH_PAGE,
      page: () => const FifthPageView(),
      binding: FifthPageBinding(),
    ),
    GetPage(
      name: _Paths.SIXTH_PAGE,
      page: () => const SixthPageView(),
      binding: SixthPageBinding(),
    ),
    GetPage(
      name: _Paths.SEVENTH_PAGE,
      page: () => const SeventhPageView(),
      binding: SeventhPageBinding(),
    ),
    GetPage(
      name: _Paths.EIGHT_PAGE,
      page: () => const EightPageView(),
      binding: EightPageBinding(),
    ),
    GetPage(
      name: _Paths.CLIENT_DETAILS,
      page: () => const ClientDetailsView(),
      binding: ClientDetailsBinding(),
    ),
    // GetPage(
    //   name: _Paths.APP_BAR,
    //   page: () => AppBarView(txt: '', page: '', background_color: Colors.white, border_coor: const Color(0xFFA369BF), txt_color: const Color(0xFFA369BF),),
    //   binding: AppBarBinding(),
    // ),
    // GetPage(
    //   name: _Paths.BUTTON_VIEW,
    //   page: () => const ButtonViewView(),
    //   binding: ButtonViewBinding(),
    // ),
  ];
}
