import 'package:flutter/material.dart';

// Добавлен routers:
class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectTab = 1; //перестроит на ту Icon которая нужна
  void onSelectTab(int index) {
    if (_selectTab == index) return;
//Будет окрашивать нажатую иконку
    setState(() {
      _selectTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("TMDB")),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectTab,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Новости",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.movie), label: "Фильмы"),
            BottomNavigationBarItem(icon: Icon(Icons.tv), label: "Сериалы"),
          ],
          onTap: onSelectTab,
        ));
  }
}
//TODO: Проверям плагин