import 'package:expense_tracker_app/homo.dart';
import 'package:expense_tracker_app/views/home.dart';
import 'package:expense_tracker_app/views/income_details_screen.dart';
import 'package:expense_tracker_app/views/transaction_details_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:expense_tracker_app/resources/theme.dart';
import 'package:expense_tracker_app/services/theme_helper.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      
      darkTheme: Themes.dark,

      themeMode: ThemeServices().theme,
      home: HomoScreen(),
    );
  }
}















