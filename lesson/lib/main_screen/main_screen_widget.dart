import 'package:flutter/material.dart';
import 'package:lesson/widgets/movi_list/movi_list_widget.dart';

class Movi {
  //Будут хранится данные для поиска
  final String imageName;
  final String title;
  final String time;
  final String description;

  Movi(this.imageName, this.title, this.time, this.description);
}

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectTab = 1; //перестроит на ту Icon которая нужна Сечас на фильмы

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Новости',
    ),
    MoviListWidget(),
    Text(
      'Сериалы',
    ),
  ];

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
        body: Center(
          child:
              _widgetOptions[_selectTab], //Перестраиват экран на нажатую иконку
        ), //Отображает лист свверху
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
