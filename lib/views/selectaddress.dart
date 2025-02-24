import 'package:cleanup/models/selected_data.dart';
import 'package:cleanup/views/confirmationscreen.dart';
import 'package:flutter/material.dart';

class SelectAddress extends StatefulWidget {
  @override
  _SelectAddressState createState() => _SelectAddressState();
  final Map<String, dynamic> cleaner;
  final SelectedData selectedData;

  const SelectAddress({super.key, required this.cleaner, required this.selectedData});
}

class _SelectAddressState extends State<SelectAddress> {
  // Mocked addresses
  final List<Map<String, String>> addresses = [
    {
      'title': 'Casa',
      'address': 'Avenida Santos Dumont 505, Andar 9, bloco D',
    },
    {
      'title': 'Trabalho',
      'address': 'Avenida Santos Dumont 505, Andar 5, bloco C',
    },
  ];

  int? selectedAddressIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1820),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
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
                    'Selecione endereço',
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
              ),
              const SizedBox(height: 20),
              Text(
                'Detalhes do endereço',
                style: TextStyle(
                  color: Color(0xFFFBFBFB),
                  fontSize: 25,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w800,
                  height: 1.40,
                  letterSpacing: 0.50,
                ),
              ),
              const SizedBox(height: 20),
              ...addresses.asMap().entries.map((entry) {
                int index = entry.key;
                Map<String, String> address = entry.value;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedAddressIndex = index;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 20),
                    padding: const EdgeInsets.all(16),
                    decoration: ShapeDecoration(
                      color: Color(0xFF1F222A),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 2,
                          color: selectedAddressIndex == index
                              ? Color(0xFF7E49FF)
                              : Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio<int>(
                              value: index,
                              groupValue: selectedAddressIndex,
                              onChanged: (int? value) {
                                setState(() {
                                  selectedAddressIndex = value;
                                });
                              },
                              activeColor: Color(0xFF7E49FF),
                            ),
                            const SizedBox(width: 11),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  address['title']!,
                                  style: TextStyle(
                                    color: Color(0xFFFBFBFB),
                                    fontSize: 18,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w800,
                                    height: 1.40,
                                    letterSpacing: 0.36,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.6,
                                  child: Text(
                                    address['address']!,
                                    style: TextStyle(
                                      color: Color(0xFFFBFBFB),
                                      fontSize: 15,
                                      fontFamily: 'Urbanist',
                                      fontWeight: FontWeight.w500,
                                      height: 1.13,
                                      letterSpacing: 0.30,
                                    ),
                                    overflow: TextOverflow.clip,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
                      ],
                    ),
                  ),
                );
              }).toList(),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  // Add new address action
                },
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                        color: Color(0xFF3D2E46),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(55.59),
                        ),
                      ),
                      child: Icon(Icons.add, color: Colors.white, size: 24),
                    ),
                    const SizedBox(width: 9),
                    Text(
                      'Adicionar novo endereço',
                      style: TextStyle(
                        color: Color(0xFFFBFBFB),
                        fontSize: 14,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                        height: 1.40,
                        letterSpacing: 0.28,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  if (selectedAddressIndex != null) {
                    SelectedData updatedSelectedData = SelectedData(
                      selectedDate: widget.selectedData.selectedDate,
                      selectedTime: widget.selectedData.selectedTime,
                      serviceHours: widget.selectedData.serviceHours,
                      description: widget.selectedData.description,
                    );
                    updatedSelectedData.address = addresses[selectedAddressIndex!]['address']!;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConfirmationScreen(
                          cleaner: widget.cleaner,
                          selectedData: updatedSelectedData,
                        ),
                      ),
                    );
                  }
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
                      'Confirmar serviço',
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
    );
  }
}