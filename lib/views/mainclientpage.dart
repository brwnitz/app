import 'package:cleanup/views/components/bottomnavbar.dart';
import 'package:cleanup/views/consultscreen.dart';
import 'package:flutter/material.dart';

class MainClientPage extends StatefulWidget {
  const MainClientPage({super.key});

  @override
  _MainClientPageState createState() => _MainClientPageState();
}

class _MainClientPageState extends State<MainClientPage> {
  final List<Map<String, dynamic>> cleaners = [
    {
      'name': 'Fulane da Silva',
      'rating': 5.0,
      'reviews': 40,
      'price': 100,
      'image': 'assets/images/mocked_fulane.png',
      'tags': ['Residencial', 'Pós-obra'],
    },
    {
      'name': 'Jabilane da Silva',
      'rating': 4.3,
      'reviews': 17,
      'price': 178,
      'image': 'assets/images/mocked_fulane.png',
      'tags': ['Residencial'],
    },
    {
      'name': 'Cleusiane da Silva',
      'rating': 3.5,
      'reviews': 25,
      'price': 55,
      'image': 'assets/images/mocked_fulane.png',
      'tags': ['Pós-obra'],
    },
    {
      'name': 'Jeusiane da Silva',
      'rating': 2.0,
      'reviews': 452,
      'price': 20,
      'image': 'assets/images/mocked_fulane.png',
      'tags': ['Residencial', 'Pós-obra'],
    },
    // Add more cleaners here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: Color(0xFF1C1820)),
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
                      'Bem-vinda a CleanUp',
                      style: TextStyle(
                        color: Color(0xCCFBFBFB),
                        fontSize: 14,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                        letterSpacing: 0.28,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 55,
                          height: 55,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: Image.asset('assets/images/mocked_icon_user.png').image,
                              fit: BoxFit.fill,
                            ),
                            shape: const OvalBorder(),
                          ),
                        ),
                        const SizedBox(width: 20),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Olá, Isabel!',
                              style: TextStyle(
                                color: Color(0xFFFBFBFB),
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.40,
                              ),
                            ),
                            Text(
                              'Bem-vinda a CleanUp',
                              style: TextStyle(
                                color: Color(0xCCFBFBFB),
                                fontSize: 14,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 1.40,
                                letterSpacing: 0.28,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 32,
                      height: 32,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: const Icon(Icons.notifications, color: Color(0xFFFBFBFB)),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'Nossos faxineiros',
                  style: TextStyle(
                    color: Color(0xFFFBFBFB),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.40,
                  ),
                ),
                const SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: cleaners.length,
                  itemBuilder: (context, index) {
                    final cleaner = cleaners[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ConsultScreen(cleaner: cleaner),
                          ),
                        );
                      },
                      child: Padding(
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
                                blurRadius: 60,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 115,
                                height: 115,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: Image.asset(cleaner['image']).image,
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      cleaner['name'],
                                      style: const TextStyle(
                                        color: Color(0xFFFBFBFB),
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.32,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      children: [
                                        const Icon(Icons.star, color: Colors.yellow, size: 16),
                                        const SizedBox(width: 4),
                                        Text(
                                          '${cleaner['rating']}',
                                          style: const TextStyle(
                                            color: Color(0xFFFBFBFB),
                                            fontSize: 14,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.28,
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          '(${cleaner['reviews']} avaliações)',
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
                                    const SizedBox(height: 8),
                                    Wrap(
                                      spacing: 8.0,
                                      runSpacing: 4.0,
                                      children: cleaner['tags'].map<Widget>((tag) {
                                        return Container(
                                          padding: const EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: Color(0xFF3D2E46),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                          child: Text(
                                            tag,
                                            style: const TextStyle(
                                              color: Color(0xCCFBFBFB),
                                              fontSize: 12,
                                              fontFamily: 'Nunito',
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 0.24,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Text(
                                          'R\$ ${cleaner['price']}',
                                          style: const TextStyle(
                                            color: Color(0xFF7E49FF),
                                            fontSize: 20,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.40,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        const Text(
                                          '(Diária)',
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
                                  ],
                                ),
                              ),
                            ],
                          ),
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
      bottomNavigationBar: BottomNavBar(selectedIndex: 1, isCleaner: false,),
    );
  }
}