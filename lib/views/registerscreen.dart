import 'package:cleanup/views/registeradress.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();

  void _register() async {
    String name = _nameController.text;
    String email = _emailController.text;
    String phone = _phoneController.text;
    String address = _addressController.text;
    String password = _passwordController.text;
    String dob = _dobController.text;

    var url = Uri.parse('http://192.168.0.223:3001/registerUser'); // Replace with your API endpoint
    var response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'name': name,
        'email': email,
        'tell': phone,
        'address': address,
        'password': password,
        'dob': dob,
      }),
    );

    print(response.body);

    if (response.statusCode == 200) {
      // Handle successful registration
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Registration successful')),
      );
    } else {
      // Handle error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Registration failed')),
      );
    }
  }

  Widget _buildInputField({
    required String label,
    required String hint,
    required TextEditingController controller,
    bool obscureText = false,
    bool enabled = true,
    GestureTapCallback? onTap,
  }) {
    return Container(
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
            child: GestureDetector(
              onTap: onTap,
              child: SizedBox(
                width: 340,
                height: 21,
                child: TextField(
                  controller: controller,
                  obscureText: obscureText,
                  enabled: enabled,
                  decoration: InputDecoration(
                    hintText: hint,
                    hintStyle: TextStyle(
                      color: Color(0xCCFBFBFB),
                      fontSize: 12,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                      height: 1.40,
                      letterSpacing: 0.24,
                    ),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(color: Color(0xFFFBFBFB)),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Text(
              label,
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
    );
  }

  Widget _buildButton({
    required String text,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 378,
        height: 55,
        padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 10),
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        ),
        child: Center(
          child: Text(
            text,
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
    );
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
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    const Text(
                      'Criar uma conta',
                      style: TextStyle(
                        color: Color(0xFFFBFBFB),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.40,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                _buildInputField(
                  label: 'Nome completo',
                  hint: 'Seu nome completo',
                  controller: _nameController,
                ),
                const SizedBox(height: 24),
                _buildInputField(
                  label: 'E-mail',
                  hint: 'seuemail@dominio.com',
                  controller: _emailController,
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: _buildInputField(
                        label: 'Celular',
                        hint: '(00) 00000-0000',
                        controller: _phoneController,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: _buildInputField(
                        label: 'Data de nascimento',
                        hint: '00/00/0000',
                        controller: _dobController,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                _buildInputField(
                  label: 'Endereço',
                  hint: 'Rua Flores, 168 - Bairro Bom Jesus',
                  controller: _addressController,
                  enabled: false,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterAddress()));
                  },
                ),
                const SizedBox(height: 24),
                _buildInputField(
                  label: 'Senha',
                  hint: '*********',
                  controller: _passwordController,
                  obscureText: true,
                ),
                const SizedBox(height: 24),
                GestureDetector(
                  onTap: _register,
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
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ao se inscrever, você concorda com os ',
                      style: TextStyle(
                        color: Color(0xCCFBFBFB),
                        fontSize: 14,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.28,
                      ),
                    ),
                    Text(
                      'Termos de Serviço',
                      style: TextStyle(
                        color: Color(0xFF7E49FF),
                        fontSize: 14,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.28,
                      ),
                    ),
                    Text(
                      ' e a ',
                      style: TextStyle(
                        color: Color(0xCCFBFBFB),
                        fontSize: 14,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.28,
                      ),
                    ),
                    Text(
                      'Política de Privacidade',
                      style: TextStyle(
                        color: Color(0xFF7E49FF),
                        fontSize: 14,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.28,
                      ),
                    ),
                    Text(
                      '.',
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
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    // Handle WhatsApp registration
                  },
                  child: Container(
                    width: double.infinity,
                    height: 55,
                    padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 10),
                    decoration: ShapeDecoration(
                      color: Color(0xFF4AAF57),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF4AAF57)),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Cadastrar-se pelo Whatsapp',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Já tem uma conta?',
                      style: TextStyle(
                        color: Color(0xCCFBFBFB),
                        fontSize: 14,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.28,
                      ),
                    ),
                    Text(
                      ' ',
                      style: TextStyle(
                        color: Color(0xFF5A5A5A),
                        fontSize: 14,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.28,
                      ),
                    ),
                    Text(
                      'Entrar',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}