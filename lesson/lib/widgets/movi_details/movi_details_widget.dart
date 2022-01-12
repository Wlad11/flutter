import 'package:flutter/material.dart';
import 'package:lesson/widgets/movi_details/movi_details_main_info_widget.dart';

class MoviDetailsWidget extends StatefulWidget {
  final int moviId;
  const MoviDetailsWidget({Key? key, required this.moviId}) : super(key: key);

  @override
  _MoviDetailsWidgetState createState() => _MoviDetailsWidgetState();
}

class _MoviDetailsWidgetState extends State<MoviDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Название фильма: <tksq Zcnht,')),
      body: ColoredBox(
        color: const Color.fromRGBO(24, 23, 27, 1.0),
        child: ListView(
          children: const [
            MoviDetailsVainInfoWidget(),
          ],
        ),
      ),
    );
  }
}
