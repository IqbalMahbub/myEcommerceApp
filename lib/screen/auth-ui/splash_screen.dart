
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_app/screen/user-panel/main_screen.dart';
import 'package:my_app/screen/auth-ui/welcomScreen.dart';

import '../../widgets/app_logo.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _gotoNextScreen();
  }
 Future<void>  _gotoNextScreen()async {
   await Future.delayed(const Duration(seconds: 1));
   Get.offAll(()=>const Welcome_screen()) ;
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            AppLogo(),
            Spacer(),
            CircularProgressIndicator(),
            SizedBox(
              height: 16,
            ),
            Text("Version  1.0.0"),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}

