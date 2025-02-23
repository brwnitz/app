import 'package:cleanup/models/selected_data.dart';
import 'package:cleanup/views/selectaddress.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CleaningSolicitation extends StatefulWidget {
  final Map<String, dynamic> cleaner;

  const CleaningSolicitation({Key? key, required this.cleaner}) : super(key: key);

  @override
  _CleaningSolicitationState createState() => _CleaningSolicitationState();
}

class _CleaningSolicitationState extends State<CleaningSolicitation> {
  int serviceHours = 0;
  String selectedTime = '';
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  String description = '';

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
                        child: Icon(Icons.arrow_back, color: Colors.white),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      'Detalhes do Serviço',
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
                Text(
                  widget.cleaner['name'] ?? 'Nome não disponível',
                  style: TextStyle(
                    color: Color(0xFF7E49FF),
                    fontSize: 18,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                    height: 1.40,
                    letterSpacing: 0.36,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Tipo de Limpeza',
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
                Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: (widget.cleaner['tags'] as List<dynamic>?)
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
                      }).toList() ?? [],
                ),
                const SizedBox(height: 20),
                Text(
                  'Selecione a data',
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
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Horas de serviço',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                              height: 1.20,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Custo aumenta após 2 horas de serviço',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w400,
                              height: 1.20,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (serviceHours > 0) serviceHours--;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(8),
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
                            '$serviceHours',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                              height: 1.20,
                            ),
                          ),
                          const SizedBox(width: 16),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                serviceHours++;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(8),
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
                const SizedBox(height: 20),
                Text(
                  'Selecione horário de início',
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
                GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: ['10:00 AM', '11:00 AM', '12:00 PM', '1:00 PM', '2:00 PM', '3:00 PM', '4:00 PM', '5:00 PM']
                      .map((time) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTime = time;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(4.0),
                        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                        decoration: ShapeDecoration(
                          color: selectedTime == time ? Color(0xFF7E49FF) : Color(0xFF251F2A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            time,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFFBFBFB),
                              fontSize: 14,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w800,
                              height: 1.40,
                              letterSpacing: 0.28,
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 20),
                Text(
                  'Adicione uma descrição do seu serviço',
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
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  decoration: ShapeDecoration(
                    color: Color(0xFF251F2A),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: TextField(
                    style: TextStyle(color: Color(0xFFFBFBFB)),
                    decoration: InputDecoration(
                      hintText: 'Deixe uma descrição',
                      hintStyle: TextStyle(color: Color(0xFF5A5B5F)),
                      border: InputBorder.none,
                    ),
                    maxLines: 3,
                    onChanged: (value) {
                      description = value;
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Preço do serviço',
                  style: TextStyle(
                    color: Color(0xFFFBFBFB),
                    fontSize: 20,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                    height: 1.40,
                    letterSpacing: 0.40,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'R\$ ${widget.cleaner['price']}',
                  style: TextStyle(
                    color: Color(0xFF7E49FF),
                    fontSize: 40,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w800,
                    height: 1.40,
                    letterSpacing: 0.91,
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    SelectedData selectedData = SelectedData(
                      selectedDate: _selectedDay,
                      selectedTime: selectedTime,
                      serviceHours: serviceHours,
                      description: description,
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectAddress(
                          cleaner: widget.cleaner,
                          selectedData: selectedData,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: ShapeDecoration(
                      color: Color(0xFF7E49FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Selecionar endereço',
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