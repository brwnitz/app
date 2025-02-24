import 'package:cleanup/views/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onboarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF261F2A),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 154,
              height: 154,
              decoration: BoxDecoration(
                color: const Color(0xFF7E49FF),
                borderRadius: BorderRadius.circular(21),
                boxShadow: [
                BoxShadow(
                  color: const Color(0x3F000000).withOpacity(0.5),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Container(
                width: 113.19,
                height: 113.19,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21)
                ),
                child: SvgPicture.asset('assets/images/carbon_clean.svg'),
                ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Cleanup',
              textAlign: TextAlign.center,
              style: TextStyle(
              color: Color(0xFFFBFBFB),
              fontSize: 32,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              letterSpacing: 0.64,
              ),
              )
          ],
        )
        ),
      );
  }
}
