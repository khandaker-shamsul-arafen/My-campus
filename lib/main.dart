import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "DSHE",
          //  builder: EasyLoading.init(),
          initialRoute: AppPages.INITIAL,
          //  initialBinding: InitialBinding(),
          theme: ThemeData(
            //    primarySwatch: AppColors.primarySwatchColor,
            fontFamily: 'Roboto',
          ),
          getPages: AppPages.routes,
        );
      },
    ),
  );
}