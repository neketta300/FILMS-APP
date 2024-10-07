import 'package:flutter/material.dart';
import 'package:move_db/Theme/app_button_style.dart';
import 'package:move_db/Theme/text_field_style.dart';

class AuthWidgets extends StatefulWidget {
  const AuthWidgets({super.key});

  @override
  State<AuthWidgets> createState() => _MyAuthWidgetsState();
}

class _MyAuthWidgetsState extends State<AuthWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'N3HF',
          ),
          centerTitle: true,
        ),
        body: ListView(
          children: const [_HeaderWidget()],
        ));
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget();

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 14, color: Colors.black);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Войти в свою учётную запись',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21),
          ),
          const SizedBox(
            height: 16,
          ),
          const _FormWidget(),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Чтобы пользоваться правкой и возможностями рейтинга n3h, а также получить персональные рекомендации, необходимо войти в свою учётную запись. Если у вас нет учётной записи, её регистрация является бесплатной и простой.',
            style: textStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          TextButton(
              style: AppButtonStyle.linkButton,
              onPressed: () {
                print('Регистрация');
              },
              child: const Text('Зарегистрироваться')),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Если Вы зарегистрировались, но не получили письмо для подтверждения, нажмите здесь, чтобы отправить письмо повторно. ',
            style: textStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          TextButton(
              style: AppButtonStyle.linkButton,
              onPressed: () {
                print('Регистрация');
              },
              child: const Text('Подтвердить почту')),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget();

  @override
  State<_FormWidget> createState() => _MyFormWidgetState();
}

class _MyFormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController(text: 'admin');
  final _passwordTextController = TextEditingController(text: 'admin');
  String? erorrText;

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;

    if (login == 'admin' && password == 'admin') {
      print('open app like admin');
      erorrText = null;

      Navigator.of(context).pushReplacementNamed('/main_screen');
    } else {
      erorrText = 'Не верный логин или пароль';
      print('show error');
    }
    setState(() {});
  }

  void _resetPassword() {
    print('reset password');
  }

  TextStyle textStyle =
      const TextStyle(fontSize: 14, color: Color.fromARGB(255, 33, 37, 41));

  Color buttonColor = const Color.fromARGB(255, 1, 180, 228);
  @override
  Widget build(BuildContext context) {
    final errorText = this.erorrText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (erorrText != null) ...{
          Text(
            errorText!,
            style: const TextStyle(color: Colors.red, fontSize: 14),
          ),
          const SizedBox(height: 16)
        },
        Text(
          'Имя пользователя',
          style: textStyle,
        ),
        TextField(
          controller: _loginTextController,
          cursorColor: Colors.black,
          decoration: TextFieldStyle.inputDecoration,
          cursorWidth: 1,
        ),
        const SizedBox(
          height: 16,
        ),
        Text('Пароль', style: textStyle),
        TextField(
          controller: _passwordTextController,
          cursorColor: Colors.black,
          decoration: TextFieldStyle.inputDecoration,
          cursorWidth: 1,
          obscureText: true,
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            TextButton(
              style: AppButtonStyle.inpuButton,
              onPressed: _auth,
              child: const Text('Войти'),
            ),
            const SizedBox(
              width: 16,
            ),
            TextButton(
              style: AppButtonStyle.linkButton,
              onPressed: _resetPassword,
              child: const Text('Сбросить пароль'),
            ),
          ],
        )
      ],
    );
  }
}
