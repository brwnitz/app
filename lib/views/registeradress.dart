import 'package:cleanup/views/registerrooms.dart';
import 'package:flutter/material.dart';

class RegisterAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(color: Color(0xFF1C1820)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                    child: Container(
                      width: 24,
                      height: 24,
                      child: Image.asset('assets/images/expand_left.png'),
                    )),
                    const SizedBox(width: 15),
                    Text(
                      'Registre novo endereço',
                      style: TextStyle(
                        color: Color(0xFFFBFBFB),
                        fontSize: 25,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w800,
                        height: 1.40,
                        letterSpacing: 0.50,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 473,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Image.asset(
                    "assets/images/map_mocked.png",
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Insira endereço',
                  style: TextStyle(
                    color: Color(0xFFFBFBFB),
                    fontSize: 25,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w800,
                    height: 1.40,
                    letterSpacing: 0.50,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Insira o nome do seu endereço',
                  style: TextStyle(
                    color: Color(0xFFFBFBFB),
                    fontSize: 14,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w400,
                    height: 1.40,
                    letterSpacing: 0.28,
                  ),
                ),
                const SizedBox(height: 14),
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  height: 44,
                  padding: const EdgeInsets.only(top: 13, left: 8, right: 8, bottom: 9),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFF1F222A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Casa',
                    style: TextStyle(
                      color: Color(0xFFFBFBFB),
                      fontSize: 18.01,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w800,
                      height: 1.40,
                      letterSpacing: 0.36,
                      ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Insira o endereço',
                  style: TextStyle(
                  color: Color(0xFFFBFBFB),
                  fontSize: 25,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w800,
                  height: 1.40,
                  letterSpacing: 0.50,
                  ),
                ),
                const SizedBox(height: 14),
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  height: 60,
                  padding: const EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                    color: Color(0xFF1F222A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Avenida Santos Dumont 505, andar 9, bloco D',
                    style: TextStyle(
                      color: Color(0xFFFBFBFB),
                      fontSize: 15,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w500,
                      height: 1.13,
                      letterSpacing: 0.30,
                      ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterRooms()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 55,
                    padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 10),
                    decoration: ShapeDecoration(
                      color: Color(0xFF7E49FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Registrar cômodos',
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
        ),
      ),
    );
  }
}