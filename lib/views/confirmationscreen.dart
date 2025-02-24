import 'package:cleanup/models/selected_data.dart';
import 'package:cleanup/views/trackservice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'components/loadingdialog.dart';
import 'components/successdialog.dart';

class Comodo {
  final String name;
  final double price;

  Comodo(this.name, this.price);
}

class ConfirmationScreen extends StatefulWidget {
  final Map<String, dynamic> cleaner;
  final SelectedData selectedData;

  const ConfirmationScreen({Key? key, required this.cleaner, required this.selectedData}) : super(key: key);

  @override
  _ConfirmationScreenState createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  final List<Map<String, String>> cards = [
    {
      'number': '1234 5678 9012 3456',
      'name': 'John Doe',
      'expiry': '12/25',
      'cvv': '123',
      'brand': 'VISA',
    },
    {
      'number': '9876 5432 1098 7654',
      'name': 'Jane Smith',
      'expiry': '11/24',
      'cvv': '456',
      'brand': 'MasterCard',
    },
  ];

  final List<Comodo> comodos = [
    Comodo('3 Quartos', 15.0),
    Comodo('2 Banheiros', 10.0),
    Comodo('1 Cozinha', 5.0),
  ];

  String selectedPaymentMethod = 'Apple Pay';

  String _formatDate(DateTime? date) {
    if (date == null) return 'N/A';
    return DateFormat('dd/MM/yyyy').format(date);
  }

  String _formatTimeRange(String startTime, int hours) {
    try {
      // Extract the hour and minute from the startTime string
      final timeParts = startTime.split(' ');
      final period = timeParts[1]; // AM or PM
      final time = timeParts[0].split(':');
      int hour = int.parse(time[0]);
      final minute = int.parse(time[1]);

      // Convert to 24-hour format if PM
      if (period == 'PM' && hour != 12) {
        hour += 12;
      } else if (period == 'AM' && hour == 12) {
        hour = 0;
      }

      // Add the service hours
      final endHour = (hour + hours) % 24;

      // Format the start and end times in 24-hour format
      final formattedStartTime = DateFormat('HH:mm').format(DateTime(0, 1, 1, hour, minute));
      final formattedEndTime = DateFormat('HH:mm').format(DateTime(0, 1, 1, endHour, minute));

      return '$formattedStartTime até $formattedEndTime';
    } catch (e) {
      return 'N/A';
    }
  }

  String _formatCurrency(double value) {
    final format = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
    return format.format(value);
  }

  void _showLoadingDialog() {
    showLoadingDialog(context, _showSuccessDialog);
  }

  void _showSuccessDialog() {
    showSuccessDialog(context, () {}, () {
      widget.selectedData.status = 'Não iniciado';
      Navigator.push(context, MaterialPageRoute(builder: (context) => TrackService(
        cleaner: widget.cleaner,
        selectedData: widget.selectedData,
      )));
    });
  }

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
              SizedBox(height: 30),
              _buildSectionTitle('Tipo de Limpeza'),
              SizedBox(height: 14),
              _buildChips(widget.cleaner['tags'] ?? ['Residencial', 'Pós-obra', 'Lavar roupa']),
              SizedBox(height: 30),
              _buildDateAndTime(),
              SizedBox(height: 30),
              _buildSectionTitle('Cômodos'),
              SizedBox(height: 14),
              _buildChips(comodos.map((comodo) => comodo.name).toList()),
              SizedBox(height: 30),
              _buildAddress(),
              SizedBox(height: 30),
              _buildDescription(),
              SizedBox(height: 30),
              _buildPaymentMethod(),
              SizedBox(height: 30),
              _buildPriceDetails(),
              SizedBox(height: 30),
              _buildConfirmButton(),
            ],
          ),
        ),
      ),
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
          'Confirmação de serviço',
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

  Widget _buildDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('Descrição do Serviço'),
        SizedBox(height: 14),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFF1F222A),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            widget.selectedData.description.isNotEmpty
                ? widget.selectedData.description
                : 'Nenhuma descrição foi detalhada para este serviço',
            style: TextStyle(
              color: Color(0xFFFBFBFB),
              fontSize: 16,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w500,
              height: 1.40,
              letterSpacing: 0.32,
            ),
            maxLines: null,
            overflow: TextOverflow.visible,
          ),
        ),
      ],
    );
  }

  Widget _buildPaymentMethod() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('Escolha método de pagamento'),
        SizedBox(height: 14),
        _buildPaymentOption('Apple Pay', Icons.apple),
        SizedBox(height: 10),
        _buildPaymentOption('PIX', Icons.qr_code),
        SizedBox(height: 10),
        ...cards.map((card) => Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: _buildCardOption(card),
        )).toList(),
        SizedBox(height: 10),
        _buildAddPaymentMethod(),
      ],
    );
  }

  Widget _buildPaymentOption(String method, IconData icon) {
    bool isSelected = selectedPaymentMethod == method;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedPaymentMethod = method;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          color: Color(0xFF1F222A),
          borderRadius: BorderRadius.circular(16),
          border: isSelected ? Border.all(color: Color(0xFF7E49FF), width: 1) : null,
        ),
        child: Row(
          children: [
            Icon(icon, size: 35, color: Colors.white),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                method,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w700,
                  height: 1.20,
                ),
              ),
            ),
            SizedBox(width: 21),
            Container(
              width: 18,
              height: 18,
              decoration: ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(width: 1, color: isSelected ? Color(0xFF7E49FF) : Color(0xFF5A5B5F)),
                ),
                color: isSelected ? Color(0xFF7E49FF) : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCardOption(Map<String, String> card) {
    String censoredNumber = '.... .... .... ${card['number']!.substring(card['number']!.length - 4)}';
    bool isSelected = selectedPaymentMethod == censoredNumber;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedPaymentMethod = censoredNumber;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          color: Color(0xFF1F222A),
          borderRadius: BorderRadius.circular(16),
          border: isSelected ? Border.all(color: Color(0xFF7E49FF), width: 1) : null,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              card['brand'] == 'VISA' ? 'assets/images/mastercard.svg' : 'assets/images/mastercard.svg',
              width: 35,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                censoredNumber,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w700,
                  height: 1.20,
                ),
              ),
            ),
            SizedBox(width: 21),
            Container(
              width: 18,
              height: 18,
              decoration: ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(width: 1, color: isSelected ? Color(0xFF7E49FF) : Color(0xFF5A5B5F)),
                ),
                color: isSelected ? Color(0xFF7E49FF) : Colors.transparent,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddPaymentMethod() {
    return Row(
      children: [
        Container(
          width: 38.48,
          height: 38.48,
          padding: const EdgeInsets.all(13.27),
          decoration: BoxDecoration(
            color: Color(0xFF3D2E46),
            borderRadius: BorderRadius.circular(69.01),
          ),
          child: Icon(Icons.add, size: 14.60, color: Color(0xFFFBFBFB)),
        ),
        SizedBox(width: 11.17),
        Text(
          'Adicionar método de pagamento',
          style: TextStyle(
            color: Color(0xFFFBFBFB),
            fontSize: 17.38,
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w500,
            height: 1.40,
            letterSpacing: 0.35,
          ),
        ),
      ],
    );
  }

  Widget _buildPriceDetails() {
    double roomPrice = comodos.fold(0.0, (sum, comodo) => sum + comodo.price);
    double initialPrice = double.tryParse(widget.cleaner['initialPrice'] ?? '100') ?? 100.0;
    double totalPrice = initialPrice + roomPrice;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle('Preço do serviço'),
        SizedBox(height: 12),
        _buildPriceRow('Preço inicial', _formatCurrency(initialPrice)),
        SizedBox(height: 9),
        _buildPriceRow('Cômodos', _formatCurrency(roomPrice)),
        SizedBox(height: 9),
        _buildPriceRow('Total', _formatCurrency(totalPrice), isTotal: true),
      ],
    );
  }

  Widget _buildPriceRow(String label, String price, {bool isTotal = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
      decoration: BoxDecoration(
        color: isTotal ? Color(0xFF7E49FF) : Color(0xFF1F222A),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              color: isTotal ? Color(0xFFFBFBFB) : Color(0xFF7E49FF),
              fontSize: isTotal ? 16 : 14,
              fontFamily: isTotal ? 'Poppins' : 'Nunito',
              fontWeight: isTotal ? FontWeight.w600 : FontWeight.w400,
              letterSpacing: isTotal ? 0.32 : 0.28,
            ),
          ),
          Text(
            price,
            style: TextStyle(
              color: isTotal ? Color(0xFFFBFBFB) : Color(0xFF7E49FF),
              fontSize: isTotal ? 16 : 14,
              fontFamily: isTotal ? 'Poppins' : 'Nunito',
              fontWeight: isTotal ? FontWeight.w600 : FontWeight.w400,
              letterSpacing: isTotal ? 0.32 : 0.28,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildConfirmButton() {
    return Center(
      child: GestureDetector(
        onTap: _showLoadingDialog,
        child: Container(
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
            color: Color(0xFF7E49FF),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: Text(
              'Confirmar pagamento',
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