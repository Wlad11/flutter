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
                children: [
                  const Image(image: AssetImage(AppImages.film)),
                  Expanded(
                    child: Column(
                      children: const [
                        Text('Mortal Kombat'),
                        Text('April 7, 2021 '),
                        Text(
                          'Описание фильма If you believe that the runtime type of the argument will always be the same as the static type of the parameter, and you’re willing to risk having an exception thrown at runtime if you’re wrong, then add an explicit cast: If you believe that the runtime type of the argument will always be the same as the static type of the parameter, and you’re willing to risk having an exception thrown at runtime if you’re wrong, then add an explic',
                          maxLines: 2, //Это обрезает строки
                          overflow: TextOverflow.ellipsis,//Показывает три точки в конце текста
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}

class Colum {}

//TODO: Остановился 17.37 Добавил image: AssetImage(AppImages.film),
