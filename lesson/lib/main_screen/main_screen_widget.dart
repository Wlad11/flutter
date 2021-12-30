import 'package:flutter/material.dart';

// Добавлен routers:
class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("TMDB")),
        bottomNavigationBar: BottomNavigationBar(
          items: [],
        ));
  }
}
//TODO: Проверям плагин