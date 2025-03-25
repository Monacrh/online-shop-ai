import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shop_ai/bindings/general_bindings.dart';
import 'package:online_shop_ai/features/authentication/screens/onboarding/onboarding.dart';
import 'package:online_shop_ai/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      darkTheme: TAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      home: const OnBoardingScreen(),
    );
  }
}