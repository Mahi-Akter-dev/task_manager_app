import 'package:flutter/widgets.dart';
import 'package:material_ui/material_ui.dart';
import 'package:task_manager/task_manager/screens/login_screen.dart';
import 'package:task_manager/task_manager/utils/asset_path.dart';
import 'package:task_manager/task_manager/widgets/screen_bg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    moveToNextScreen();
  }

  Future moveToNextScreen() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBG(
        child: Center(
          child: Image.asset(AssetPath.logo, width: 300, height: 300),
        ),
      ),
    );
  }
}
