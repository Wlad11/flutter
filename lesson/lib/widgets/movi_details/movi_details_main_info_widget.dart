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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
          child: _SummeryWidget(),
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
      textAlign: TextAlign.center,
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

class _SummeryWidget extends StatelessWidget {
  const _SummeryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'R 04/29/2021 (us) 1h 49m Action, Adventure, Thriller, War',
      maxLines: 3,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontWeight: FontWeight.w600, fontSize: 19, color: Colors.white60),
    );
  }
}
//TODO: Осталось  до конца 81:11 Верстает другой блок доделать самому