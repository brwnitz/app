import 'package:cleanup/models/selected_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'components/bottomnavbar.dart';

class Comodo {
  final String name;
  final double price;

  Comodo(this.name, this.price);
}

class TrackService extends StatefulWidget {
  final Map<String, dynamic> cleaner;
  final SelectedData selectedData;

  const TrackService({Key? key, required this.cleaner, required this.selectedData}) : super(key: key);

  @override
  _TrackServiceState createState() => _TrackServiceState();
}

class _TrackServiceState extends State<TrackService> {
  String _formatDate(DateTime? date) {
    if (date == null) return 'N/A';
    return DateFormat('dd/MM/yyyy').format(date);
  }

  String _formatTimeRange(String startTime, int hours) {
    try {
      final timeParts = startTime.split(' ');
      final period = timeParts[1];
      final time = timeParts[0].split(':');
      int hour = int.parse(time[0]);
      final minute = int.parse(time[1]);

      if (period == 'PM' && hour != 12) {
        hour += 12;
      } else if (period == 'AM' && hour == 12) {
        hour = 0;
      }

      final endHour = (hour + hours) % 24;
      final formattedStartTime = DateFormat('HH:mm').format(DateTime(0, 1, 1, hour, minute));
      final formattedEndTime = DateFormat('HH:mm').format(DateTime(0, 1, 1, endHour, minute));

      return '$formattedStartTime até $formattedEndTime';
    } catch (e) {
      return 'N/A';
    }
  }

  final List<Comodo> comodos = [
    Comodo('3 Quartos', 15.0),
    Comodo('2 Banheiros', 10.0),
    Comodo('1 Cozinha', 5.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(color: Color(0xFF1C1820)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              SizedBox(height: 20),
              _buildCleanerInfo(),
              SizedBox(height: 20),
              _buildProgressBar(),
              SizedBox(height: 30),
              _buildSectionTitle('Status do serviço'),
              SizedBox(height: 14),
              _buildStatusChip('Não iniciado'),
              SizedBox(height: 30),
              _buildSectionTitle('Tipo de Limpeza'),
              SizedBox(height: 14),
              _buildChips(widget.cleaner['tags'] ?? ['Residencial', 'Pós-obra', 'Lavar roupa']),
              SizedBox(height: 30),
              _buildDateAndTime(),
              SizedBox(height: 30),
              _buildSectionTitle('Cômodos'),
              SizedBox(height: 14),
              _buildChips(comodos.map((room) => room.name).toList()),
              SizedBox(height: 30),
              _buildAddress(),
              SizedBox(height: 30),
              _buildChatSection(),
              SizedBox(height: 30),
              _buildCancelButton(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(selectedIndex: 4, isCleaner: false,),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Image.asset('assets/images/expand_left.png', width: 24, height: 24),
        ),
        SizedBox(width: 15),
        Text(
          'Acompanhar serviço',
          style: TextStyle(
            color: Color(0xFFFBFBFB),
            fontSize: 25,
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w800,
            height: 1.40,
            letterSpacing: 0.50,
          ),
        ),
      ],
    );
  }

  Widget _buildCleanerInfo() {
    return Row(
      children: [
        Container(
          width: 45.73,
          height: 45.73,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
          image: Image.asset('assets/images/icon_deb.png').image,
          fit: BoxFit.fill,
          ),
        ),
      ), // Replace with actual logo path
        SizedBox(width: 10),
        Text(
          widget.cleaner['name'] ?? 'Nome do Cleaner',
          style: TextStyle(
            color: Color(0xFFFBFBFB),
            fontSize: 20,
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w600,
            height: 1.40,
            letterSpacing: 0.28,
          ),
        ),
      ],
    );
  }

  Widget _buildProgressBar() {
  return Container(
    width: 375,
    height: 3,
    child: Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          child: Container(
            width: 53,
            height: 3,
            decoration: ShapeDecoration(
              color: widget.selectedData.status == 'Não iniciado' ? Color(0xFF7E49FF) : Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(38),
              ),
            ),
          ),
        ),
        Positioned(
          left: 53,
          top: 0,
          child: Container(
            width: 269,
            height: 3,
            decoration: ShapeDecoration(
              color: widget.selectedData.status == 'Em andamento' ? Color(0xFF7E49FF) : Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(38),
              ),
            ),
          ),
        ),
        Positioned(
          left: 322,
          top: 0,
          child: Container(
            width: 53,
            height: 3,
            decoration: ShapeDecoration(
              color: widget.selectedData.status == 'Finalizado' ? Color(0xFF7E49FF) : Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(38),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        color: Color(0xFFFBFBFB),
        fontSize: 14,
        fontFamily: 'Urbanist',
        fontWeight: FontWeight.w400,
        height: 1.40,
        letterSpacing: 0.28,
      ),
    );
  }

  Widget _buildStatusChip(String status) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: ShapeDecoration(
        color: Color(0xFF3D2E46),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Center(
        child: Text(
          status,
          style: TextStyle(
            color: Color(0xCCFBFBFB),
            fontSize: 11.03,
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w800,
            height: 1.40,
            letterSpacing: 0.22,
          ),
        ),
      ),
    );
  }

  Widget _buildChips(List<String> labels) {
    return Wrap(
      spacing: 4,
      children: labels.map((label) {
        return Chip(
          label: Text(
            label,
            style: TextStyle(
              color: Color(0xCCFBFBFB),
              fontSize: 11.03,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w800,
              height: 1.40,
              letterSpacing: 0.22,
            ),
          ),
          backgroundColor: Color(0xFF3D2E46),
        );
      }).toList(),
    );
  }

  Widget _buildDateAndTime() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildDateTimeColumn('Data do serviço', _formatDate(widget.selectedData.selectedDate)),
        _buildDateTimeColumn('Horário de serviço', _formatTimeRange(widget.selectedData.selectedTime, widget.selectedData.serviceHours)),
      ],
    );
  }

  Widget _buildDateTimeColumn(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle(title),
        SizedBox(height: 14),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 13),
          decoration: BoxDecoration(
            color: Color(0xFF1F222A),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xFF7E49FF), width: 2),
          ),
          child: Text(
            value,
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
      ],
    );
  }

  Widget _buildAddress() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('Endereço'),
        SizedBox(height: 14),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFF1F222A),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color(0xFF7E49FF), width: 2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Casa',
                style: TextStyle(
                  color: Color(0xFFFBFBFB),
                  fontSize: 18.01,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w800,
                  height: 1.40,
                  letterSpacing: 0.36,
                ),
              ),
              SizedBox(height: 4),
              Text(
                widget.selectedData.address ?? 'Endereço não disponível',
                style: TextStyle(
                  color: Color(0xFFFBFBFB),
                  fontSize: 15,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w500,
                  height: 1.13,
                  letterSpacing: 0.30,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildChatSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('Converse com profissional'),
        SizedBox(height: 14),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
          decoration: BoxDecoration(
            color: Color(0xFF1F222A),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Text(
                'Deixe uma descrição',
                style: TextStyle(
                  color: Color(0xFF5A5B5F),
                  fontSize: 16,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w400,
                  height: 1.40,
                  letterSpacing: 0.32,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCancelButton() {
    return Center(
      child: GestureDetector(
        onTap: () {
          // Handle cancel service action
        },
        child: Container(
          width: double.infinity,
          height: 55,
          padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 10),
          decoration: BoxDecoration(
            color: Color(0xFF1F222A),
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Color(0xFFDB1D3C), width: 2),
          ),
          child: Center(
            child: Text(
              'Cancelar serviço',
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
    );
  }
}