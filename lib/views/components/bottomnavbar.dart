import 'package:cleanup/views/calendarscreen.dart';
import 'package:cleanup/views/maincleanerpage.dart';
import 'package:cleanup/views/mainclientpage.dart';
import 'package:cleanup/views/messagescreen.dart';
import 'package:cleanup/views/profilescreen.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final bool isCleaner;

  BottomNavBar({required this.selectedIndex, required this.isCleaner});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF261F2A), // Background color behind the ShapeDecoration
      child: Container(
        width: double.infinity,
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavItem(icon: Icons.home, label: 'Início', isActive: selectedIndex == 1 ? true : false, onTap: () {
              if (selectedIndex != 1){
                if (isCleaner){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MainCleanerPage()));
                } else {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MainClientPage()));
                }
              }
            },),
            BottomNavItem(icon: Icons.cleaning_services, label: 'Faxinas', isActive: selectedIndex == 2 ? true : false, onTap: () {

            },),
            BottomNavItem(icon: Icons.chat, label: 'Conversas', isActive: selectedIndex == 3 ? true : false, onTap: () {
              if (selectedIndex != 3){
                if (isCleaner){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MainCleanerPage()));
                } else {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MessageScreen()));
                }
              }
            },),
            BottomNavItem(icon: Icons.calendar_today, label: 'Calendário', isActive: selectedIndex == 4 ? true : false, onTap: () {
              if (selectedIndex != 4){
                if (isCleaner){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MainCleanerPage()));
                } else {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CalendarScreen()));
                }
              }
            },),
            BottomNavItem(icon: Icons.person, label: 'Perfil', isActive: selectedIndex == 5 ? true : false, onTap: () {
              if (selectedIndex != 5){
                if (isCleaner){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MainCleanerPage()));
                } else {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
                }
              }
            },),
          ],
        ),
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;
  final Function()? onTap;

  BottomNavItem({required this.icon, required this.label, this.isActive = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector( 
      onTap: onTap,
      child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: isActive ? Color(0xFF7E49FF) : Colors.white),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: isActive ? Color(0xFF7E49FF) : Colors.white,
            fontSize: 10,
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w600,
            height: 1.40,
            letterSpacing: 0.22,
          ),
        ),
      ],
    ));
  }
}