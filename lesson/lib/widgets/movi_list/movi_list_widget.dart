import 'package:flutter/material.dart';
import 'package:lesson/resources/resources.dart';

class MoviListWidget extends StatelessWidget {
  const MoviListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10, //Солько будет фильмов
        itemExtent: 163, // отвечает за высоту Если разная он не нужен
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: const [
                Image(image: AssetImage(AppImages.film)),
              ],
            ),
          );
        });
  }
}

//TODO: Остановился 08.22 Добавил spider.yaml Добавляется cpider create
