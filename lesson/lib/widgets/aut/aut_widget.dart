import 'package:flutter/material.dart';
import 'package:lesson/Theme/app_button_style.dart';

class AutWidget extends StatefulWidget {
  const AutWidget({Key? key}) : super(key: key);

  @override
  _AutWidgetState createState() => _AutWidgetState();
}

class _AutWidgetState extends State<AutWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Войти в учетную запись'),
      ),
      body: ListView(
        children: const [
          _NeaderWidget(),
        ],
      ),
    );
  }
}

class _NeaderWidget extends StatelessWidget {
  const _NeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16), //Отступы от края
      child: Column(
        children: [
          const SizedBox(height: 20),
          const _FormWidget(), //Авторизация Пароль
          const SizedBox(height: 20),
          const Text(
            "Чтобы пользоваться правкой и возможностями рейтинга TMDB, а также получить персональные рекомендации, необходимо войти в свою учётную запись. Если у вас нет учётной записи, её регистрация является бесплатной и простой. Нажмите здесь чтобы начать ",
            style: textStyle,
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Регистрация"),
            style: AppButtonStyle.linkButton, //В Theme
          ),
          //  ),
          const SizedBox(height: 20),
          const Text(
            "Если Вы зарегистрировались, но не получили письмо для подтверждения, Нажмите здесь, чтобы отправить письмо повторно.",
            style: textStyle,
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Верификация Емеил"),
            style: AppButtonStyle.linkButton, //В Theme
          ),
          // ElevatedButton(onPressed: () {}, child: Text('Верификация емеил')),
        ],
      ),
    );
  }
}

//Походу начинаю разбираться
class _FormWidget extends StatefulWidget {
  const _FormWidget({Key? key}) : super(key: key);

  @override
  __FormWidgetState createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    );
    // final почему то не хотела сука Tолько const
    const textFildDecoration = InputDecoration(
      border: OutlineInputBorder(),
      //focusedBorder: UnderlineInputBorder(),
      //focusedBorder: OutlineInputBorder(),
      enabledBorder: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, //Прижал к краю
      children: [
        const Text("Имя пользователя", style: textStyle),
        const SizedBox(height: 7),
        const TextField(
            decoration: textFildDecoration,
            style: TextStyle(color: Colors.amber, fontSize: 22)),
        const SizedBox(height: 15),
        const Text("Пароль", style: textStyle),
        const SizedBox(height: 7),
        const TextField(
          decoration: textFildDecoration,
          obscureText: true, // obscureText Скрывает в звездочки
        ),
        //Добавляем кнопки
        const SizedBox(height: 15),
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text("Логин"),
              style: AppButtonStyle.linkButton, //В Theme
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Пароль"),
              style: ButtonStyle(
                  // foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(Colors.white70),
                  textStyle: MaterialStateProperty.all(const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w700)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 25))),
            ),
          ],
        )
      ],
    );
  }
}
