import 'package:flutter/material.dart';
import 'package:validators/validators.dart';
import 'package:questao_4/bottom_navigation.dart';

void main() => runApp(const MyApp());

bool validarBotao(email, senha) {
  if (isEmail(email) == true && isLength(senha, 7) == true) {
    return true;
  } else {
    return false;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Tela de Login';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              height: 100,
              width: 100,
              child: (Image.asset('assets/images/logo.png')),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Entrar',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextFormField(
                obscureText: true,
                controller: senhaController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Senha',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                // esqueci a senha hmmmm
              },
              child: const Text(
                'Esqueci a senha',
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const BottomNavigation()));
                  },
                  // onPressed: validarBotao(
                  //         emailController.text, senhaController.text)
                  //     ? () {
                  //         Navigator.of(context).push(MaterialPageRoute(
                  //             builder: (context) => const BottomNavigation()));
                  //       }
                  //     : null,
                  // só funciona se dar ctrl + s no código depois de colocar as infos de login e senha válidas no app
                  child: const Text('Entrar'),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Não tem uma conta?'),
                TextButton(
                  child: const Text(
                    'Cadastrar-se',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    // telinha de cadastro
                  },
                )
              ],
            ),
          ],
        ));
  }
}
