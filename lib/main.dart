import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty/util/app_colors.dart';
import 'package:sizer/sizer.dart';
import 'package:rick_and_morty/helper/dependencies.dart' as dep;

import 'widgets/nav_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.primaryBlack,
          ),
          home: const NavBar(),
        );
      },
    );
  }
}
