import 'package:flutter/material.dart';

class MoviListWidget extends StatelessWidget {
  const MoviListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10, //Солько будет фильмов
        itemExtent: 163, // отвечает за высоту Если разная он не нужен
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.amber,
          );
        });
  }
}

//TODO: Остановился 08.22 Добавил spider.yaml Добавляется cpider create
