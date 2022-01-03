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
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black.withOpacity(0.5)),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  //Затемняет
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  )
                ],
              ),
              clipBehavior: Clip.hardEdge, //Скругляет рамку как понял картинкy
              child: Row(
                children: const [
                  Image(
                    image: AssetImage(AppImages.film),
                  )
                ],
              ),
            ),
          );
        });
  }
}

//TODO: Остановился 17.37 Добавил image: AssetImage(AppImages.film),
