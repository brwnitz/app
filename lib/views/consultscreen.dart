import 'package:cleanup/views/cleaningsolicitation.dart';
import 'package:flutter/material.dart';

class ConsultScreen extends StatefulWidget {
  final Map<String, dynamic> cleaner;

  ConsultScreen({required this.cleaner});

  @override
  _ConsultScreenState createState() => _ConsultScreenState(cleaner: cleaner);
}

class _ConsultScreenState extends State<ConsultScreen> {
  final Map<String, dynamic> cleaner;

  _ConsultScreenState({required this.cleaner});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
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
                          cleaner['name'] ?? 'Nome não disponível',
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
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 24),
                        const SizedBox(width: 4),
                        Text(
                          '${cleaner['rating'] ?? 0}',
                          style: TextStyle(
                            color: Color(0xFFFBFBFB),
                            fontSize: 20,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.28,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '(${cleaner['reviews'] ?? 0} avaliações)',
                          style: TextStyle(
                            color: Color(0xFFFBFBFB),
                            fontSize: 20,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.28,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8.0,
                      runSpacing: 4.0,
                      children: (cleaner['tags'] as List<dynamic>?)
                              ?.map<Widget>((tag) {
                            return Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Color(0xFF3D2E46),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                tag ?? '',
                                style: TextStyle(
                                  color: Color(0xCCFBFBFB),
                                  fontSize: 12,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.24,
                                ),
                              ),
                            );
                          }).toList() ??
                          [],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'R\$100 (Preço inicial)',
                      style: TextStyle(
                        color: Color(0xFF7E49FF),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.40,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Sobre mim',
                      style: TextStyle(
                        color: Color(0xFFFBFBFB),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.36,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      cleaner['description'] ?? 'Descrição não disponível',
                      style: TextStyle(
                        color: Color(0xFFFBFBFB),
                        fontSize: 14,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.28,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Comentários',
                      style: TextStyle(
                        color: Color(0xFFFBFBFB),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.36,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Color(0xFF251F2A),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/icon_deb.png'),
                            radius: 22,
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Text(
                              'Essa Fulane é top mesmo....',
                              style: TextStyle(
                                color: Color(0xFFFBFBFB),
                                fontSize: 14,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.28,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Color(0xFF251F2A),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/icon_deb.png'),
                            radius: 22,
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Text(
                              'Essa Fulane é top mesmo....',
                              style: TextStyle(
                                color: Color(0xFFFBFBFB),
                                fontSize: 14,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.28,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Meu trabalho',
                      style: TextStyle(
                        color: Color(0xFFFBFBFB),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.36,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 179,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                image: AssetImage('assets/images/image_1.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Container(
                            height: 179,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                image: AssetImage('assets/images/image_1.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 179,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                image: AssetImage('assets/images/image_1.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Container(
                            height: 179,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                image: AssetImage('assets/images/image_1.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 80), // Add some space at the bottom
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Color(0xFF1C1820),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xFF251F2A),
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xFF7E49FF)),
                      ),
                      child: Center(
                        child: Text(
                          'Mensagem',
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
                  const SizedBox(width: 16),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CleaningSolicitation(cleaner: cleaner)));
                      },
                      child: Container(
                      height: 55,
                      decoration: BoxDecoration(
                        color: Color(0xFF7E49FF),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                        child: Text(
                          'Solicitar limpeza',
                          style: TextStyle(
                            color: Color(0xFFFBFBFB),
                            fontSize: 14,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.28,
                          ),
                        ),
                      ),
                    )
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}