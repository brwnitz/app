import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'components/bottomnavbar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1820),
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
                      'Calendário',
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
                TableCalendar(
                  firstDay: DateTime.utc(2020, 1, 1),
                  lastDay: DateTime.utc(2030, 12, 31),
                  focusedDay: _focusedDay,
                  calendarFormat: _calendarFormat,
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay; // update `_focusedDay` here as well
                    });
                  },
                  onFormatChanged: (format) {
                    if (_calendarFormat != format) {
                      setState(() {
                        _calendarFormat = format;
                      });
                    }
                  },
                  onPageChanged: (focusedDay) {
                    _focusedDay = focusedDay;
                  },
                  calendarStyle: CalendarStyle(
                    defaultTextStyle: const TextStyle(color: Color(0xFFFBFBFB)),
                    weekendTextStyle: const TextStyle(color: Color(0xFFFBFBFB)),
                    selectedDecoration: const BoxDecoration(
                      color: Color(0xFF7E49FF),
                      shape: BoxShape.circle,
                    ),
                    todayDecoration: BoxDecoration(
                      color: const Color(0xFF7E49FF).withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                  ),
                  headerStyle: HeaderStyle(
                    titleTextStyle: const TextStyle(
                      color: Color(0xFFFBFBFB),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.32,
                    ),
                    formatButtonTextStyle: const TextStyle(color: Color(0xFFFBFBFB)),
                    formatButtonDecoration: BoxDecoration(
                      color: const Color(0xFF7E49FF),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    leftChevronIcon: const Icon(Icons.chevron_left, color: Color(0xFFFBFBFB)),
                    rightChevronIcon: const Icon(Icons.chevron_right, color: Color(0xFFFBFBFB)),
                  ),
                  daysOfWeekStyle: const DaysOfWeekStyle(
                    weekdayStyle: TextStyle(color: Color(0xCCFBFBFB)),
                    weekendStyle: TextStyle(color: Color(0xCCFBFBFB)),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Serviços agendados',
                  style: TextStyle(
                    color: Color(0xFFFBFBFB),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.32,
                  ),
                ),
                const SizedBox(height: 20),
                // Add your scheduled services here
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF251F2A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF5A5B5F),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.52),
                              ),
                            ),
                            child: Image.asset('assets/images/icon_person_mock.png'),
                          ),
                          const SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Fulane Pereira da Silva',
                                style: TextStyle(
                                  color: Color(0xFFFBFBFB),
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.30,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF3D2E46),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    child: const Text(
                                      'Não iniciado',
                                      style: TextStyle(
                                        color: Color(0xCCFBFBFB),
                                        fontSize: 12,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.24,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF3D2E46),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    child: const Text(
                                      '10:00 - 13:00',
                                      style: TextStyle(
                                        color: Color(0xCCFBFBFB),
                                        fontSize: 12,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.24,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Text(
                        '10/01/2025',
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
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(selectedIndex: 4, isCleaner: false,),
    );
  }
}