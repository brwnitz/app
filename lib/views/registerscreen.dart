import 'package:cleanup/views/registeradress.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( 
        child: Container(
    width: 414,
    height: 971,
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(color: Color(0xFF1C1820)),
    child: Stack(
        children: [
            Positioned(
                left: 18,
                top: 721,
                child: Container(
                    width: 378,
                    height: 55,
                    padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 10),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                        color: Color(0xFF7A1EFF),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    ),
                    child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Text(
                                'Criar uma conta',
                                style: TextStyle(
                                    color: Color(0xFFFBFBFB),
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.28,
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 16,
                top: 68,
                child: Container(
                    width: 385,
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                                width: 24,
                                height: 24,
                                child: Image.asset('assets/images/expand_left.png'),
                            )
                          ),
                            const SizedBox(width: 15),
                            SizedBox(
                                width: 304,
                                child: Text(
                                    'Criar uma conta',
                                    style: TextStyle(
                                        color: Color(0xFFFBFBFB),
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.40,
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 14,
                top: 123,
                child: Container(
                    height: 506,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Container(
                                width: 387,
                                height: 82,
                                child: Stack(
                                    children: [
                                        Positioned(
                                            left: 0,
                                            top: 31,
                                            child: Container(
                                                width: 387,
                                                height: 51,
                                                decoration: BoxDecoration(
                                                    color: Color(0xFF251F2A),
                                                    borderRadius: BorderRadius.circular(3),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 45,
                                            top: 46,
                                            child: SizedBox(
                                                width: 340,
                                                height: 21,
                                                child: Text(
                                                    '  Seu nome completo',
                                                    style: TextStyle(
                                                        color: Color(0xCCFBFBFB),
                                                        fontSize: 12,
                                                        fontFamily: 'Nunito',
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.40,
                                                        letterSpacing: 0.24,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Text(
                                                'Nome completo',
                                                style: TextStyle(
                                                    color: Color(0xFFFBFBFB),
                                                    fontSize: 15,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 0.30,
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                            const SizedBox(height: 24),
                            Container(
                                width: 387,
                                height: 82,
                                child: Stack(
                                    children: [
                                        Positioned(
                                            left: 0,
                                            top: 31,
                                            child: Container(
                                                width: 387,
                                                height: 51,
                                                decoration: BoxDecoration(
                                                    color: Color(0xFF251F2A),
                                                    borderRadius: BorderRadius.circular(3),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 50,
                                            top: 46,
                                            child: SizedBox(
                                                width: 335,
                                                height: 21,
                                                child: Text(
                                                    ' seuemail@dominio.com',
                                                    style: TextStyle(
                                                        color: Color(0xCCFBFBFB),
                                                        fontSize: 12,
                                                        fontFamily: 'Nunito',
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.40,
                                                        letterSpacing: 0.24,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Text(
                                                'E-mail',
                                                style: TextStyle(
                                                    color: Color(0xFFFBFBFB),
                                                    fontSize: 15,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 0.30,
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                            const SizedBox(height: 24),
                            Container(
                                width: 175,
                                height: 82,
                                child: Stack(
                                    children: [
                                        Positioned(
                                            left: 0,
                                            top: 31,
                                            child: Container(
                                                width: 175,
                                                height: 51,
                                                decoration: BoxDecoration(
                                                    color: Color(0xFF251F2A),
                                                    borderRadius: BorderRadius.circular(3),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 50,
                                            top: 46,
                                            child: SizedBox(
                                                width: 110,
                                                height: 21,
                                                child: Text(
                                                    ' (00) 00000-0000',
                                                    style: TextStyle(
                                                        color: Color(0xCCFBFBFB),
                                                        fontSize: 12,
                                                        fontFamily: 'Nunito',
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.40,
                                                        letterSpacing: 0.24,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 0,
                                            top: 0,
                                            child: SizedBox(
                                                width: 86.06,
                                                child: Text(
                                                    'Celular',
                                                    style: TextStyle(
                                                        color: Color(0xFFFBFBFB),
                                                        fontSize: 15,
                                                        fontFamily: 'Poppins',
                                                        fontWeight: FontWeight.w600,
                                                        letterSpacing: 0.30,
                                                    ),
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                            const SizedBox(height: 24),
                            Container(
                                width: 387,
                                height: 82,
                                child: Stack(
                                    children: [
                                        Positioned(
                                            left: 0,
                                            top: 31,
                                            child: Container(
                                                width: 387,
                                                height: 51,
                                                decoration: BoxDecoration(
                                                    color: Color(0xFF251F2A),
                                                    borderRadius: BorderRadius.circular(3),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 35,
                                            top: 46,
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterAddress()));
                                              },
                                              child: const SizedBox(
                                                width: 350,
                                                height: 21,
                                                child: Text(
                                                    '  Rua Flores, 168 - Bairo Bom Jesus',
                                                    style: TextStyle(
                                                        color: Color(0xCCFBFBFB),
                                                        fontSize: 12,
                                                        fontFamily: 'Nunito',
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.40,
                                                        letterSpacing: 0.24,
                                                    ),
                                                ),
                                            )),
                                        ),
                                        Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Text(
                                                'Endereço',
                                                style: TextStyle(
                                                    color: Color(0xFFFBFBFB),
                                                    fontSize: 15,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 0.30,
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                            const SizedBox(height: 24),
                            Container(
                                width: 387,
                                height: 82,
                                child: Stack(
                                    children: [
                                        Positioned(
                                            left: 0,
                                            top: 31,
                                            child: Container(
                                                width: 387,
                                                height: 51,
                                                decoration: BoxDecoration(
                                                    color: Color(0xFF251F2A),
                                                    borderRadius: BorderRadius.circular(3),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 7,
                                            top: 46,
                                            child: SizedBox(
                                                width: 378,
                                                height: 21,
                                                child: Text(
                                                    ' *********',
                                                    style: TextStyle(
                                                        color: Color(0xCCFBFBFB),
                                                        fontSize: 12,
                                                        fontFamily: 'Nunito',
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.40,
                                                        letterSpacing: 6.36,
                                                    ),
                                                ),
                                            ),
                                        ),
                                        Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Text(
                                                'Senha',
                                                style: TextStyle(
                                                    color: Color(0xFFFBFBFB),
                                                    fontSize: 15,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                    letterSpacing: 0.30,
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
            Positioned(
                left: 28,
                top: 382,
                child: Container(
                    width: 20,
                    height: 20,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: FlutterLogo(),
                ),
            ),
            Positioned(
                left: 222,
                top: 335,
                child: Container(
                    width: 176,
                    height: 82,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 0,
                                top: 31,
                                child: Container(
                                    width: 175,
                                    height: 51,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF251F2A),
                                        borderRadius: BorderRadius.circular(3),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 53,
                                top: 46,
                                child: SizedBox(
                                    width: 123,
                                    height: 21,
                                    child: Text(
                                        '00/00/0000',
                                        style: TextStyle(
                                            color: Color(0xCCFBFBFB),
                                            fontSize: 12,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w400,
                                            height: 1.40,
                                            letterSpacing: 0.24,
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 0,
                                top: 0,
                                child: SizedBox(
                                    width: 175,
                                    child: Text(
                                        'Data de nascimento',
                                        style: TextStyle(
                                            color: Color(0xFFFBFBFB),
                                            fontSize: 15,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.30,
                                        ),
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 15,
                top: 660,
                child: Container(
                    width: 24,
                    height: 24,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 3.60,
                                top: 3.60,
                                child: Container(
                                    width: 16.80,
                                    height: 16.80,
                                    child: FlutterLogo(),
                                ),
                            ),
                            Positioned(
                                left: 7.20,
                                top: 8.70,
                                child: Container(
                                    width: 9.60,
                                    height: 6.60,
                                    child: FlutterLogo(),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 49,
                top: 661,
                child: SizedBox(
                    width: 339,
                    child: Text.rich(
                        TextSpan(
                            children: [
                                TextSpan(
                                    text: 'Ao se inscrever, você concorda com os ',
                                    style: TextStyle(
                                        color: Color(0xCCFBFBFB),
                                        fontSize: 14,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.28,
                                    ),
                                ),
                                TextSpan(
                                    text: 'Termos de Serviço',
                                    style: TextStyle(
                                        color: Color(0xFF7E49FF),
                                        fontSize: 14,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.28,
                                    ),
                                ),
                                TextSpan(
                                    text: ' e a ',
                                    style: TextStyle(
                                        color: Color(0xCCFBFBFB),
                                        fontSize: 14,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.28,
                                    ),
                                ),
                                TextSpan(
                                    text: 'Política de Privacidade',
                                    style: TextStyle(
                                        color: Color(0xFF7E49FF),
                                        fontSize: 14,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.28,
                                    ),
                                ),
                                TextSpan(
                                    text: '.',
                                    style: TextStyle(
                                        color: Color(0xCCFBFBFB),
                                        fontSize: 14,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.28,
                                    ),
                                ),
                            ],
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 23,
                top: 788,
                child: Container(
                    width: 369,
                    height: 19,
                    child: Stack(
                        children: [
                            Positioned(
                                left: 175.36,
                                top: 0,
                                child: SizedBox(
                                    width: 17.21,
                                    child: Text(
                                        'ou',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color(0xCCFBFBFB),
                                            fontSize: 14,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.28,
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 0,
                                top: 8,
                                child: Container(
                                    width: 167.83,
                                    decoration: ShapeDecoration(
                                        color: Color(0xCCFBFBFB),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 1,
                                                strokeAlign: BorderSide.strokeAlignCenter,
                                                color: Color(0xCCFBFBFB),
                                            ),
                                        ),
                                    ),
                                ),
                            ),
                            Positioned(
                                left: 201.17,
                                top: 8,
                                child: Container(
                                    width: 167.83,
                                    decoration: ShapeDecoration(
                                        color: Color(0xCCFBFBFB),
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 1,
                                                strokeAlign: BorderSide.strokeAlignCenter,
                                                color: Color(0xCCFBFBFB),
                                            ),
                                        ),
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 114,
                top: 900,
                child: Text.rich(
                    TextSpan(
                        children: [
                            TextSpan(
                                text: 'Já tem uma conta?',
                                style: TextStyle(
                                    color: Color(0xCCFBFBFB),
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.28,
                                ),
                            ),
                            TextSpan(
                                text: ' ',
                                style: TextStyle(
                                    color: Color(0xFF5A5A5A),
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.28,
                                ),
                            ),
                            TextSpan(
                                text: 'Entrar',
                                style: TextStyle(
                                    color: Color(0xFF7E49FF),
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.28,
                                ),
                            ),
                        ],
                    ),
                    textAlign: TextAlign.center,
                ),
            ),
            Positioned(
                left: 18,
                top: 818,
                child: Container(
                    width: 378,
                    height: 55,
                    padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 10),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                        color: Color(0xFF4AAF57),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFF4AAF57)),
                            borderRadius: BorderRadius.circular(6),
                        ),
                    ),
                    child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            Text(
                                '          Cadastrar-se pelo Whatsapp',
                                style: TextStyle(
                                    color: Color(0xFFFBFBFB),
                                    fontSize: 14,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.28,
                                ),
                            ),
                        ],
                    ),
                ),
            ),
            Positioned(
                left: 391,
                top: 617,
                child: Opacity(
                    opacity: 0.90,
                    child: Transform(
                        transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                        child: Container(
                            width: 24,
                            height: 24,
                            child: Stack(
                                children: [
                                    Positioned(
                                        left: 4,
                                        top: 7,
                                        child: Container(
                                            width: 17,
                                            height: 10,
                                            child: FlutterLogo(),
                                        ),
                                    ),
                                    Positioned(
                                        left: 9,
                                        top: 15,
                                        child: Container(
                                            width: 7,
                                            height: 6,
                                            decoration: ShapeDecoration(
                                                shape: StarBorder.polygon(
                                                    side: BorderSide(
                                                        width: 1,
                                                        strokeAlign: BorderSide.strokeAlignCenter,
                                                        color: Color(0xFFB8B8B8),
                                                    ),
                                                    sides: 7,
                                                ),
                                            ),
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ),
                ),
            ),
            Positioned(
                left: 96,
                top: 833,
                child: Container(
                    width: 25,
                    height: 25,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: FlutterLogo(),
                ),
            ),
            Positioned(
                left: 28,
                top: 170,
                child: Container(
                    width: 20,
                    height: 20,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: FlutterLogo(),
                ),
            ),
            Positioned(
                left: 28,
                top: 276,
                child: Container(
                    width: 20,
                    height: 20,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: FlutterLogo(),
                ),
            ),
            Positioned(
                left: 237,
                top: 382,
                child: Container(
                    width: 20,
                    height: 20,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: FlutterLogo(),
                ),
            ),
            Positioned(
                left: 26,
                top: 488,
                child: Container(
                    width: 20,
                    height: 20,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: FlutterLogo(),
                ),
            ),
        ],
    ),
)),
    );
  }
}