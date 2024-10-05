import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:one_click/screens/Spash.dart';
import 'package:one_click/screens/login_screen.dart';
import 'package:one_click/screens/my_inquiry_screen.dart';
import 'package:one_click/screens/startupscreen.dart';
import 'package:one_click/screens/webearlProfile.dart';
import 'package:sizer/sizer.dart';
class OneClickApp extends StatelessWidget {
 const OneClickApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const OneClickAppView();
  }
}

class OneClickAppView extends StatefulWidget {
  const OneClickAppView({super.key});

  @override
  State<OneClickAppView> createState() => _OneClickAppViewState();
}

class _OneClickAppViewState extends State<OneClickAppView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
@override
  Widget  build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430,932),
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return  const MaterialApp(
            debugShowCheckedModeBanner: false,
            home:LoginScreen()
          );
        },
      ),
    );
  }
}
