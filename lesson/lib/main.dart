import 'package:flutter/material.dart';
import 'package:lesson/widgets/aut/aut_widget.dart';

import 'main_screen/main_screen_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Добавлен routers:
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Мир Кино',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      routes: {
        '/auth': (context) => const AutWidget(),
        '/main_screen': (context) => const MainScreenWidget(),
      },
      //home: const AutWidget()
      initialRoute:
          '/auth', //Экран будет начинаться отсюдаесли поставить  main_screen
      //onGenerateRoute:  Хорошая вещь добавить не правильно '/auth1' и будет показывать
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<void>(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text("Произошла ошибка навигации"),
            ),
          );
        });
      },
    );
  }
}
