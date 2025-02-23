import 'package:flutter/material.dart';

class ServiceDetail extends StatefulWidget {
  @override
  _ServiceDetailState createState() => _ServiceDetailState();
}

class _ServiceDetailState extends State<ServiceDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 414,
          decoration: BoxDecoration(color: Color(0xFF1C1820)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 56, 16, 0),
                child: Row(
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      child: FlutterLogo(),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: Text(
                        'Detalhes da Faxina',
                        style: TextStyle(
                          color: Color(0xFFFBFBFB),
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 387,
                decoration: BoxDecoration(
                  color: Color(0xFF251F2A),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xFF7E49FF), width: 12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 22,
                            height: 22,
                            child: FlutterLogo(),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Endereço',
                              style: TextStyle(
                                color: Color(0xFFFBFBFB),
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Rua das Flores, 123 - Centro',
                        style: TextStyle(
                          color: Color(0xCCFBFBFB),
                          fontSize: 14,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.28,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            width: 22,
                            height: 22,
                            child: FlutterLogo(),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Tipo de Limpeza',
                              style: TextStyle(
                                color: Color(0xFFFBFBFB),
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Limpeza Completa Residencial',
                        style: TextStyle(
                          color: Color(0xCCFBFBFB),
                          fontSize: 14,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.28,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            width: 22,
                            height: 22,
                            child: FlutterLogo(),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Valor do Serviço',
                              style: TextStyle(
                                color: Color(0xFFFBFBFB),
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'R\$ 120,00',
                        style: TextStyle(
                          color: Color(0xCCFBFBFB),
                          fontSize: 14,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                          height: 1.40,
                          letterSpacing: 0.28,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            width: 22,
                            height: 22,
                            child: FlutterLogo(),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Data',
                              style: TextStyle(
                                color: Color(0xFFFBFBFB),
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.30,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Container(
                            width: 22,
                            height: 22,
                            child: FlutterLogo(),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Horário',
                              style: TextStyle(
                                color: Color(0xFFFBFBFB),
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              '15/12/2024',
                              style: TextStyle(
                                color: Color(0xCCFBFBFB),
                                fontSize: 14,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.28,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              '14:00 - 18:00',
                              style: TextStyle(
                                color: Color(0xCCFBFBFB),
                                fontSize: 14,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                letterSpacing: 0.28,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 387,
                decoration: BoxDecoration(
                  color: Color(0xFF251F2A),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 22,
                            height: 22,
                            child: FlutterLogo(),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Instruções Específicas',
                              style: TextStyle(
                                color: Color(0xFFFBFBFB),
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.30,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Limpar todos os cômodos, incluindo banheiros\nPassar pano úmido nos móveis\nAspirar tapetes e sofás\nLavar louça na cozinha\nTrocar roupa de cama',
                        style: TextStyle(
                          color: Color(0xCCFCFCFC),
                          fontSize: 14,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                          height: 1.65,
                          letterSpacing: 0.28,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  'Ao aceitar, você confirma disponibilidade para o serviço.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xCCFBFBFB),
                    fontSize: 12,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.24,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 183,
                    height: 49,
                    padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 10),
                    decoration: ShapeDecoration(
                      color: Color(0xFF7A1EFF),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    ),
                    child: Center(
                      child: Text(
                        'Aceitar',
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
                  Container(
                    width: 183,
                    height: 49,
                    padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 10),
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
                          fontSize: 14,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.28,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: 414,
                height: 82,
                padding: const EdgeInsets.only(
                  top: 21,
                  left: 21,
                  right: 21,
                  bottom: 16.91,
                ),
                decoration: ShapeDecoration(
                  color: Color(0xFF1B1820),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0xFF343131)),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 27,
                          height: 27,
                          child: FlutterLogo(),
                        ),
                        const SizedBox(height: 1.57),
                        Text(
                          'Início',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF7E49FF),
                            fontSize: 11.01,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w600,
                            height: 1.40,
                            letterSpacing: 0.22,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 27.51,
                          height: 27.51,
                          child: FlutterLogo(),
                        ),
                        const SizedBox(height: 1.57),
                        Text(
                          'Faxinas',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.01,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w600,
                            height: 1.40,
                            letterSpacing: 0.22,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 25.94,
                          height: 25.94,
                          child: FlutterLogo(),
                        ),
                        const SizedBox(height: 2.36),
                        Text(
                          'Conversas',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFFBFBFB),
                            fontSize: 11.01,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w600,
                            height: 1.40,
                            letterSpacing: 0.22,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 26.73,
                          height: 26.73,
                          child: FlutterLogo(),
                        ),
                        const SizedBox(height: 1.57),
                        Text(
                          'Calendário',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.01,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w600,
                            height: 1.40,
                            letterSpacing: 0.22,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 26.73,
                          height: 26.73,
                          child: FlutterLogo(),
                        ),
                        const SizedBox(height: 1.57),
                        Text(
                          'Perfil',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.01,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w600,
                            height: 1.40,
                            letterSpacing: 0.22,
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
  }
}