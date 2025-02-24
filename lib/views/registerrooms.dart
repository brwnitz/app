import 'package:flutter/material.dart';

class RegisterRooms extends StatefulWidget {
  @override
  _RegisterRoomsState createState() => _RegisterRoomsState();
}

class _RegisterRoomsState extends State<RegisterRooms> {
  Map<String, int> roomCounts = {
    'Sala de Estar': 1,
    'Terraço': 1,
    'Quartos': 1,
    'Banheiros': 1,
    'Cozinha': 1,
    'Sala de jantar': 1,
    'Garagem': 1,
    'Quintal': 1,
  };

  void incrementRoomCount(String room) {
    setState(() {
      roomCounts[room] = roomCounts[room]! + 1;
    });
  }

  void decrementRoomCount(String room) {
    setState(() {
      if (roomCounts[room]! > 1) {
        roomCounts[room] = roomCounts[room]! - 1;
      }
    });
  }

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
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      'Cômodos do endereço',
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
                const SizedBox(height: 8),
                Text(
                  'Selecione quantos e quais cômodos serão limpos.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w500,
                    height: 1.40,
                    letterSpacing: 0.20,
                  ),
                ),
                const SizedBox(height: 38),
                Column(
                  children: roomCounts.keys.map((room) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 24.0),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        decoration: ShapeDecoration(
                          color: Color(0xFF251F2A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          shadows: [
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
                            Expanded(
                              child: Text(
                                room,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.30,
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () => decrementRoomCount(room),
                                  child: Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF35383F),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                    ),
                                    child: Icon(Icons.remove, color: Colors.white),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Text(
                                  '${roomCounts[room]}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w700,
                                    height: 1.20,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                GestureDetector(
                                  onTap: () => incrementRoomCount(room),
                                  child: Container(
                                    padding: const EdgeInsets.all(12),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF35383F),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                    ),
                                    child: Icon(Icons.add, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 24),
                GestureDetector(
                  onTap: () {
                    // Handle the tap event
                    print('Finalizar tapped');
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
                        'Finalizar',
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