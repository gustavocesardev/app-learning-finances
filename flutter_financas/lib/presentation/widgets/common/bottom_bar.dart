import 'package:flutter/material.dart';
import 'package:flutter_financas/presentation/themes/colors_constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {

  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: ColorConstants.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              child: const Text(
                'Inicie sua jornada pela educação financeira!',
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.white
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}

class CustomNavigationBarHome extends StatefulWidget {

  const CustomNavigationBarHome({super.key});

  @override
  State<CustomNavigationBarHome> createState() => _CustomNavigationBarHomeState();
}

class _CustomNavigationBarHomeState extends State<CustomNavigationBarHome> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });   
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_outlined),
          label: 'Calendário',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Início',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Configurações',
        ),
      ],
      unselectedItemColor: ColorConstants.thirdColor,
      selectedItemColor: ColorConstants.thirdColor,
      backgroundColor: ColorConstants.primaryColor,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}