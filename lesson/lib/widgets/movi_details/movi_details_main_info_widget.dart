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
//TODO: Остановился 31:43 Надо другой урок смотреть