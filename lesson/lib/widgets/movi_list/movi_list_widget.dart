import 'package:flutter/material.dart';
import 'package:lesson/resources/resources.dart';

class Movi {
  //Будут хранится данные для поиска
  final int id;
  final String imageName;
  final String title;
  final String time;
  final String description;

  Movi(
      {required this.id,
      required this.imageName,
      required this.title,
      required this.time,
      required this.description});
}

//Конвертировал в statefulWidget
class MoviListWidget extends StatefulWidget {
  const MoviListWidget({Key? key}) : super(key: key);

  @override
  State<MoviListWidget> createState() => _MoviListWidgetState();
}

class _MoviListWidgetState extends State<MoviListWidget> {
  final _movies = [
    Movi(
      imageName: AppImages.film,
      title: "Человек Паук",
      time: "April 7, 2022",
      description:
          "Описание фильма If you believe that the runtime type of the argument will always be",
    ),
    Movi(
      imageName: AppImages.film,
      title: "Лошадь",
      time: "April 7, 2022",
      description:
          "Описание фильма If you believe that the runtime type of the argument will always be",
    ),
    Movi(
      imageName: AppImages.film,
      title: "Путин пидр",
      time: "April 7, 2022",
      description:
          "Описание фильма If you believe that the runtime type of the argument will always be",
    ),
    Movi(
      imageName: AppImages.film,
      title: "Шакал",
      time: "April 7, 2022",
      description:
          "Описание фильма If you believe that the runtime type of the argument will always be",
    ),
    Movi(
      imageName: AppImages.film,
      title: "Огненая Битва",
      time: "April 7, 2022",
      description:
          "Описание фильма If you believe that the runtime type of the argument will always be",
    ),
    Movi(
      imageName: AppImages.film,
      title: "Последняя Битва",
      time: "April 7, 2022",
      description:
          "Описание фильма If you believe that the runtime type of the argument will always be",
    ),
    Movi(
      imageName: AppImages.film,
      title: "Смертельная Битва",
      time: "April 7, 2022",
      description:
          "Описание фильма If you believe that the runtime type of the argument will always be",
    ),
    Movi(
      imageName: AppImages.film,
      title: "Смертельная Битва",
      time: "April 7, 2022",
      description:
          "Описание фильма If you believe that the runtime type of the argument will always be",
    ),
    Movi(
      imageName: AppImages.film,
      title: "Смертельная Битва",
      time: "April 7, 2022",
      description:
          "Описание фильма If you believe that the runtime type of the argument will always be",
    ),
    Movi(
      imageName: AppImages.film,
      title: "Смертельная Битва",
      time: "April 7, 2022",
      description:
          "Описание фильма If you believe that the runtime type of the argument will always be",
    ),
    Movi(
      imageName: AppImages.film,
      title: "lohad",
      time: "April 7, 2022",
      description:
          "Описание фильма If you believe that the runtime type of the argument will always be",
    ),
  ];
  //Слушатель событий что пишут в поиске внизу тоже
  var _filtrMovies = <Movi>[];

  final _serhController = TextEditingController();

  //Слушатель событий что пишут в поиске
  void _searhMovies() {
    final query = _serhController.text;
    if (query.isNotEmpty) {
      //Если не пустой запрос то проводим поиск
      _filtrMovies = _movies.where((Movi movi) {
        return movi.title.toLowerCase().contains(query.toLowerCase());
        //Все буквы перевел в нижний регистр
      }).toList();
    } else {
      _filtrMovies = _movies;
      //Если запрос пустой показываем все фильмы
    }

    setState(() {}); //без него не будет работать
  }

  @override
  void initState() {
    super.initState();
    // _searhMovies(); //Нужно вызвать чтоб сразу заполнял фильмами
    _filtrMovies = _movies; // Вот так попроще вызвать все фильмы
    _serhController.addListener(_searhMovies);
  }

  void _onMoviTap(int index) {
    Navigator.of(context).pushNamed('/main_screen/widgets/movi_details');
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
            padding: const EdgeInsets.only(top: 70),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            //keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            //Хорошая вещь закрывает сама набор букв если скролишь
            //itemCount: _movies.length,
            itemCount: _filtrMovies.length,
            itemExtent: 163, // отвечает за высоту Если разная он не нужен
            itemBuilder: (BuildContext context, int index) {
              // final movie = _movies[index];
              final movie = _filtrMovies[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors
                            .white, // если закоментить будет виден эфект при нажатии
                        border:
                            Border.all(color: Colors.black.withOpacity(0.5)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          //Затемняет
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          )
                        ],
                      ),
                      clipBehavior:
                          Clip.hardEdge, //Скругляет рамку как понял картинкy
                      child: Row(
                        children: [
                          Image(image: AssetImage(movie.imageName)),
                          const SizedBox(width: 15), //Отступ от картики
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                Text(movie.title,
                                    maxLines: 1, //Это обрезает строки
                                    overflow: TextOverflow.ellipsis,
                                    //Показывает три точки в конце текста
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold)),
                                const SizedBox(height: 5),
                                Text(movie.time,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500)),
                                const SizedBox(height: 20),
                                Text(movie.description,
                                    maxLines: 2, //Это обрезает строки
                                    overflow: TextOverflow.ellipsis
                                    //Показывает три точки в конце текста
                                    ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Material(
                      //Material специальный виджет для InkWell
                      color: Colors.transparent,
                      child: InkWell(
                        //Вызывает визуальный эфект при нажатии
                        borderRadius: BorderRadius.circular(
                            10), // Бывает InkWell не скругляет
                        onTap: () => _onMoviTap(index),
                      ),
                    ),
                  ],
                ),
              );
            }),
        Padding(
          //Это поиск
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: _serhController,
            decoration: InputDecoration(
              labelText: 'Поиск',
              filled: true, //Это чтоб можно было задать колор как я понял
              fillColor: Colors.white.withAlpha(215), //Делает прозрачным
              border: const OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}

class Colum {}

//TODO: Остановился 11.37 Добавил image: AssetImage(AppImages.film),
