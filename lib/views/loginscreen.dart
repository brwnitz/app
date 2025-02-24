import 'package:cleanup/views/maincleanerpage.dart';
import 'package:cleanup/views/mainclientpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleLogin() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    var url = Uri.parse('http://192.168.0.223:3001/login');
    var response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    print(response);

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      if (jsonResponse['role'] == 'cleaner') {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MainCleanerPage()));
      } else if (jsonResponse['role'] == 'client') {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MainClientPage()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Invalid role')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid email or password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Color(0xFF1C1820)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(height: 56),
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
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Text(
                        'Entre na sua conta',
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
                SizedBox(height: 20),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'E-mail ou celular',
                        style: TextStyle(
                          color: Color(0xFFFBFBFB),
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.30,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF251F2A),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            hintText: 'Digite seu e-mail ou celular',
                            hintStyle: TextStyle(
                              color: Color(0xCCFBFBFB),
                              fontSize: 12,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                              height: 1.40,
                              letterSpacing: 0.24,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          ),
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
                      const SizedBox(height: 32),
                      Text(
                        'Senha',
                        style: TextStyle(
                          color: Color(0xFFFBFBFB),
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.30,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF251F2A),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: '*********',
                            hintStyle: TextStyle(
                              color: Color(0xCCFBFBFB),
                              fontSize: 12,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.w400,
                              height: 1.40,
                              letterSpacing: 4.32,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                          ),
                          style: TextStyle(
                            color: Color(0xCCFBFBFB),
                            fontSize: 12,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            height: 1.40,
                            letterSpacing: 4.32,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Esqueceu sua senha?',
                    style: TextStyle(
                      color: Color(0xFF7E49FF),
                      fontSize: 14,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.28,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: _handleLogin,
                  child: Container(
                    width: double.infinity,
                    height: 55,
                    padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 10),
                    decoration: ShapeDecoration(
                      color: Color(0xFF7A1EFF),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    ),
                    child: Center(
                      child: Text(
                        'Entrar',
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
                const SizedBox(height: 20),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Não tem uma conta?',
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
                        text: 'Cadastre-se',
                        style: TextStyle(
                          color: Color(0xFF7E49FF),
                          fontSize: 14,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.28,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}