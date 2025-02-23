import 'package:flutter/material.dart';
import 'components/bottomnavbar.dart';

class MainCleanerPage extends StatefulWidget {
  @override
  _MainCleanerPageState createState() => _MainCleanerPageState();
}

class _MainCleanerPageState extends State<MainCleanerPage> {
  bool _isValueVisible = true;
  String _selectedOrder = 'Mais recentes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color(0xFF1C1820)),
          child: Column(
            children: [
              _buildHeader(),
              SizedBox(height: 20),
              _buildEarningsCard(),
              SizedBox(height: 20),
              _buildCleaningRequests(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(selectedIndex: 1, isCleaner: true),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 58, 20, 0),
      child: Row(
        children: [
          Container(
            width: 55,
            height: 55,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: Image.asset('assets/images/icon_deb.png').image,
                fit: BoxFit.fill,
              ),
              shape: OvalBorder(),
            ),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Olá, Maria!',
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
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEarningsCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Container(
        width: double.infinity,
        height: 86.42,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: double.infinity,
                height: 86.42,
                decoration: ShapeDecoration(
                  color: Color(0xFF251F2A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 21.60,
              child: Container(
                width: 42.53,
                height: 43.75,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 42.53,
                        height: 43.75,
                        decoration: ShapeDecoration(
                          color: Color(0xFF2E4A42),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 13,
                      top: 8.23,
                      child: SizedBox(
                        width: 17,
                        height: 27.35,
                        child: Text(
                          '\$',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF4AAF57),
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w800,
                            height: 1.40,
                            letterSpacing: 0.36,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 65,
              top: 35,
              child: SizedBox(
                width: 79,
                height: 19,
                child: Text(
                  'Ganhos\n deste mês',
                  style: TextStyle(
                    color: Color(0xFFFBFBFB),
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 1.30,
                    letterSpacing: 0.26,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          _isValueVisible ? Icons.visibility : Icons.visibility_off,
                          color: Color(0xFFFBFBFB),
                        ),
                        onPressed: () {
                          setState(() {
                            _isValueVisible = !_isValueVisible;
                          });
                        },
                      ),
                      Text(
                        _isValueVisible ? 'R\$ 1.200,00' : '******',
                        style: TextStyle(
                          color: Color(0xFFFBFBFB),
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.36,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '12 serviços concluídos',
                    style: TextStyle(
                      color: Color(0xFFFBFBFB),
                      fontSize: 12,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.28,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCleaningRequests() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Solicitações de faxina',
              style: TextStyle(
                color: Color(0xFFFBFBFB),
                fontSize: 22, // Increased font size
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                letterSpacing: 0.36,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Ordenar por:',
                style: TextStyle(
                  color: Color(0xCCFBFBFB),
                  fontSize: 14,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.28,
                ),
              ),
              DropdownButton<String>(
                value: _selectedOrder,
                dropdownColor: Color(0xFF251F2A),
                style: TextStyle(
                  color: Color(0xFFFBFBFB),
                  fontSize: 14,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.28,
                ),
                items: <String>['Mais recentes', 'Mais antigos', 'Maior valor', 'Menor valor']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedOrder = newValue!;
                  });
                },
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        _buildCleaningRequestCard(
          title: 'Limpeza Residencial',
          address: 'Rua das Flores, 123 - Centro',
          distance: '2 km de distância',
          area: 'Área: 80m²',
          price: 'R\$ 120,00',
        ),
        SizedBox(height: 20),
        _buildCleaningRequestCard(
          title: 'Limpeza Pós-Obra',
          address: 'Av. Brasil, 456 - Jardins',
          distance: '2,5 km de distância',
          area: 'Área: 60m²',
          price: 'R\$ 250,00',
        ),
        SizedBox(height: 20),
        _buildCleaningRequestCard(
          title: 'Limpeza Residencial',
          address: 'Av. Anel, 789 - Boa Viagem',
          distance: '3 km de distância',
          area: 'Área: 80m²',
          price: 'R\$ 120,00',
        ),
      ],
    );
  }

  Widget _buildCleaningRequestCard({
    required String title,
    required String address,
    required String distance,
    required String area,
    required String price,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFF251F2A),
        borderRadius: BorderRadius.circular(10),
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
                child: Center(
                  child: FlutterLogo(size: 22),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: Color(0xFFFBFBFB),
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 1.30,
                    letterSpacing: 0.30,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            address,
            style: TextStyle(
              color: Color(0xCCFBFBFB),
              fontSize: 14,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w400,
              letterSpacing: 0.28,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                distance,
                style: TextStyle(
                  color: Color(0xCCFBFBFB),
                  fontSize: 14,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.28,
                ),
              ),
              Text(
                area,
                style: TextStyle(
                  color: Color(0xCCFBFBFB),
                  fontSize: 13,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.26,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            price,
            style: TextStyle(
              color: Color(0xFFFBFBFB),
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              letterSpacing: 0.36,
            ),
            textAlign: TextAlign.right,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 125,
                height: 39,
                decoration: ShapeDecoration(
                  color: Color(0xFF7E49FF),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                ),
                child: Center(
                  child: Text(
                    'Aceitar',
                    style: TextStyle(
                      color: Color(0xFFFBFBFB),
                      fontSize: 12,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.28,
                    ),
                  ),
                ),
              ),
              Container(
                width: 125,
                height: 39,
                decoration: ShapeDecoration(
                  color: Color(0xFF251F2A),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFFDB1D3C)),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Recusar serviço',
                    style: TextStyle(
                      color: Color(0xFFFBFBFB),
                      fontSize: 12,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.28,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}