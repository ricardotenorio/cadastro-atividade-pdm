import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Cadastro';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          backgroundColor: Colors.black12,
        ),
        body: const SingleChildScrollView (
          child: CadastroForm()
        ),
        backgroundColor: Colors.teal[200],
      ),
    );
  }
}

class CadastroForm extends StatelessWidget {
  const CadastroForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Nome',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Idade',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Localização',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(8, MediaQuery.of(context).size.height / 2, 8, 10),
          child:
            ElevatedButton(
              onPressed: _cadastrar,
              style: ElevatedButton.styleFrom(
                primary: Colors.black12,
                minimumSize: const Size.fromHeight(50)
              ),
              child: const Text('Cadastrar'),
            )
        )
      ],
    );
  }

  void _cadastrar() {}
}
