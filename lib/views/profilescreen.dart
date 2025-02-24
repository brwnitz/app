import 'package:flutter/material.dart';
import 'components/bottomnavbar.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1820),
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
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      'Meu perfil',
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
                Container(
                  width: double.infinity,
                  height: 89,
                  decoration: ShapeDecoration(
                    color: Color(0xFF7E49FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x0F000000),
                        blurRadius: 44,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Container(
                          width: 57,
                          height: 57,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/icon_person_mock.png'),
                              fit: BoxFit.fill,
                            ),
                            shape: OvalBorder(),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Isabel Soares',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.32,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF3D2E46),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: Text(
                                    '5.0',
                                    style: TextStyle(
                                      color: Color(0xFFFBFBFB),
                                      fontSize: 13,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.30,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  decoration: ShapeDecoration(
                    color: Color(0xFF251F2A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 42.53,
                            height: 42.53,
                            decoration: ShapeDecoration(
                              color: Color(0xFF3D2E46),
                              shape: OvalBorder(),
                            ),
                            child: Icon(Icons.account_circle, color: Colors.white),
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Minha conta',
                                style: TextStyle(
                                  color: Color(0xFFFBFBFB),
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.30,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Informações de contato',
                                style: TextStyle(
                                  color: Color(0xCCFBFBFB),
                                  fontSize: 12,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.24,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          Container(
                            width: 42.53,
                            height: 42.53,
                            decoration: ShapeDecoration(
                              color: Color(0xFF3D2E46),
                              shape: OvalBorder(),
                            ),
                            child: Icon(Icons.account_balance_wallet, color: Colors.white),
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Carteira',
                                style: TextStyle(
                                  color: Color(0xFFFBFBFB),
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.30,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Gerencie seus pagamentos',
                                style: TextStyle(
                                  color: Color(0xCCFBFBFB),
                                  fontSize: 12,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.24,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          Container(
                            width: 42.53,
                            height: 42.53,
                            decoration: ShapeDecoration(
                              color: Color(0xFF3D2E46),
                              shape: OvalBorder(),
                            ),
                            child: Icon(Icons.calendar_today, color: Colors.white),
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Gerenciar disponibilidade',
                                style: TextStyle(
                                  color: Color(0xFFFBFBFB),
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.30,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Altere seus dias e horários disponíveis',
                                style: TextStyle(
                                  color: Color(0xCCFBFBFB),
                                  fontSize: 12,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.24,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          Container(
                            width: 42.53,
                            height: 42.53,
                            decoration: ShapeDecoration(
                              color: Color(0xFF3D2E46),
                              shape: OvalBorder(),
                            ),
                            child: Icon(Icons.exit_to_app, color: Colors.white),
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sair da conta',
                                style: TextStyle(
                                  color: Color(0xFFFBFBFB),
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.30,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Deslogar do seu perfil',
                                style: TextStyle(
                                  color: Color(0xCCFBFBFB),
                                  fontSize: 12,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.24,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Mais',
                  style: TextStyle(
                    color: Color(0xFFFBFBFB),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.32,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  decoration: ShapeDecoration(
                    color: Color(0xFF261F2A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 42.53,
                            height: 42.53,
                            decoration: ShapeDecoration(
                              color: Color(0xFF3D2E46),
                              shape: OvalBorder(),
                            ),
                            child: Icon(Icons.help, color: Colors.white),
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ajuda & Suporte',
                                style: TextStyle(
                                  color: Color(0xFFFBFBFB),
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.30,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          Container(
                            width: 42.53,
                            height: 42.53,
                            decoration: ShapeDecoration(
                              color: Color(0xFF3D2E46),
                              shape: OvalBorder(),
                            ),
                            child: Icon(Icons.info, color: Colors.white),
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sobre o App',
                                style: TextStyle(
                                  color: Color(0xFFFBFBFB),
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.30,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(selectedIndex: 5, isCleaner: false,),
    );
  }
}