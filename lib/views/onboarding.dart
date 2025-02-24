import 'package:cleanup/views/loginscreen.dart';
import 'package:cleanup/views/registerscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Color(0xFF1C1820)),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: -122,
              child: Transform.translate(
                offset: Offset(0, -150), // Adjust the offset value to move the element upwards
                child: Container(
                  width: 655,
                  height: 490,
                  decoration: ShapeDecoration(
                  gradient: LinearGradient(
                  begin: Alignment(0.00, -1.00),
                  end: Alignment(0, 1),
                  colors: [Color(0xFF7E49FF), Color(0xFF261F2A)],
                  ),
                  shape: OvalBorder(),
                  ),
                  )
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 371,
                padding: const EdgeInsets.only(
                  top: 45.50,
                  left: 40.39,
                  right: 46.39,
                  bottom: 45.50,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 284.21,
                      height: 280,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 116.53,
                            top: 11.02,
                            child: Container(
                              width: 128.28,
                              height: 172.39,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 12.77,
                                    top: -15.36,
                                    child: Opacity(
                                      opacity: 0.50,
                                      child: Container(
                                        width: 123.63,
                                        height: 200.19,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 142.57,
                            top: 63.12,
                            child: Container(
                              width: 138.50,
                              height: 134.83,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: -9,
                                    top: 5.35,
                                    child: Container(
                                      width: 163.25,
                                      height: 153.74,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 117.45,
                            top: 46.64,
                            child: Container(
                              width: 139.87,
                              height: 173.96,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 63.97,
                                    top: 8.76,
                                    child: Container(
                                      width: 75.90,
                                      height: 69.90,
                                    ),
                                  ),
                                  Positioned(
                                    left: -0,
                                    top: 0.30,
                                    child: Container(
                                      width: 85.25,
                                      height: 59.43,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0.93,
                            top: 178.02,
                            child: Container(
                              width: 283.29,
                              height: 101.70,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0.17,
                                    top: 0,
                                    child: Container(
                                      width: 282.90,
                                      height: 96.29,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 3.58,
                            top: 37.91,
                            child: Container(
                              width: 135.94,
                              height: 231.12,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 75.19,
                                    top: -0,
                                    child: Container(
                                      width: 16.72,
                                      height: 20.84,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 101.64,
                            top: 192.06,
                            child: Container(
                              width: 89.72,
                              height: 79.36,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 15.75,
                                    top: 0,
                                    child: Container(
                                      width: 44.26,
                                      height: 64.48,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 3.71,
                                            top: -6.64,
                                            child: Opacity(
                                              opacity: 0.77,
                                              child: Container(
                                                width: 37.78,
                                                height: 74.49,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 38.74,
                                    top: 24.95,
                                    child: Container(
                                      width: 39.03,
                                      height: 41.01,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 2.72,
                                            top: -5.38,
                                            child: Opacity(
                                              opacity: 0.77,
                                              child: Container(
                                                width: 37.87,
                                                height: 47.30,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 371, 
                    height: 371,
                    child: Image.asset('assets/images/cleaning_people.png'),
                  ),
                  SizedBox(height: 22),
                  Text(
                    'Bem-vindo(a) ao Cleanup!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFBFBFB),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.40,
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: 264,
                    child: Text(
                      'Conectamos profissionais de limpeza a clientes que precisam dos seus serviços',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xCCFBFBFB),
                        fontSize: 16,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.32,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));                      
                    },
                    child: Container(
                      width: 378,
                      height: 51,
                      padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 10),
                      decoration: ShapeDecoration(
                        color: Color(0xFF7A1EFF),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                      ),
                      child: Center(
                        child: Text(
                          'Criar uma conta',
                          style: TextStyle(
                            color: Color(0xFFFBFBFB),
                            fontSize: 14,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.28,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      // Handle the tap event
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child: Container(
                      width: 378,
                      height: 55,
                      padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 10),
                      decoration: ShapeDecoration(
                        color: Color(0xFF251F2A),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF7E49FF)),
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Fazer login',
                          style: TextStyle(
                            color: Color(0xFFFBFBFB),
                            fontSize: 14,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.28,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}