import 'package:flutter/material.dart';
import 'components/bottomnavbar.dart';

class MessageScreen extends StatelessWidget {
  final List<Map<String, dynamic>> people = [
    {
      'name': 'Débora Sameque',
      'message': 'Olá, tudo bem?',
      'time': '12:30',
      'image': 'assets/images/icon_person_mock.png',
    },
    {
      'name': 'Ana Silva',
      'message': 'Oi, como vai?',
      'time': '11:45',
      'image': 'assets/images/icon_person_mock.png',
    },
    {
      'name': 'Júlio Cesar',
      'message': 'Bom dia!',
      'time': '10:15',
      'image': 'assets/images/icon_person_mock.png',
    },
    // Add more people here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1820), // Set the background color of the entire screen
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: Color(0xFF1C1820)), // Set the background color of the container
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
                    const Text(
                      'Mensagens',
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
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFF251F2A),
                    hintText: 'Pesquisar',
                    hintStyle: const TextStyle(
                      color: Color(0xFFFBFBFB),
                      fontSize: 14,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.28,
                    ),
                    prefixIcon: const Icon(Icons.search, color: Color(0xFFFBFBFB)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    final person = people[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 24.0),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        decoration: ShapeDecoration(
                          color: const Color(0xFF251F2A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          shadows: const [
                            BoxShadow(
                              color: Color(0x0C04060F),
                              blurRadius: 25,
                              offset: Offset(0, 4),
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 55,
                              height: 55,
                              decoration: ShapeDecoration(
                                image: DecorationImage(
                                  image: AssetImage(person['image']),
                                  fit: BoxFit.fill,
                                ),
                                shape: OvalBorder(),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    person['name'],
                                    style: const TextStyle(
                                      color: Color(0xFFFBFBFB),
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.32,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    person['message'],
                                    style: const TextStyle(
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
                            const SizedBox(width: 16),
                            Text(
                              person['time'],
                              style: const TextStyle(
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
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(selectedIndex: 3, isCleaner: false,),
    );
  }
}