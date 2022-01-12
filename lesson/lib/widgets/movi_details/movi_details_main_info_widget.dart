import 'package:flutter/material.dart';
import 'package:lesson/resources/resources.dart';
//import 'package:lesson/widgets/movi_list/movi_list_widget.dart';

class MoviDetailsVainInfoWidget extends StatelessWidget {
  const MoviDetailsVainInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _TopPosterWidget(),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: _MoviNameWidget(),
        ),
      ],
    );
  }
}

class _TopPosterWidget extends StatelessWidget {
  const _TopPosterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Image(image: AssetImage(AppImages.voin)),
        Positioned(
          top: 20,
          left: 20,
          bottom: 20,
          child: Image(image: AssetImage(AppImages.devushka)),
        ),
      ],
    );
  }
}

class _MoviNameWidget extends StatelessWidget {
  const _MoviNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 3, //null,
      text: const TextSpan(children: [
        TextSpan(
            text: 'Название фильма жвппвП fgfgs',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21)),
        TextSpan(
            text: ' (2021)',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 19)),
      ]),
    );
  }
}
//TODO: Остановился 31:43 Надо другой урок смотреть