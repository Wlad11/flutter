import 'package:flutter/material.dart';

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
      body: ListView(
        children: [],
      ),
    );
  }
}
//TODO: Остановился 24.45