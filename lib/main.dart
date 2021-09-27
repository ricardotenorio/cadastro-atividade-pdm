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

class CadastroForm extends StatefulWidget {
  const CadastroForm({Key? key}) : super(key: key);

  @override
  State<CadastroForm> createState() => _CadastroFormState();
}

class _CadastroFormState extends State<CadastroForm> {
  final nomeController = TextEditingController();

  final idadeController = TextEditingController();

  final localizacaoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            controller: nomeController,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Nome',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            controller: idadeController,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Idade',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextField(
            controller: localizacaoController,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Localização',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(8, MediaQuery.of(context).size.height / 2, 8, 10),
          child:
            ElevatedButton(
              onPressed: () => _cadastrar(context),
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

  void _cadastrar(context) {
    showDialog(
      context: context, 
      builder: (context) {
      return AlertDialog(
        content: Text(
          'Nome: ${nomeController.text}\n'
          'Idade: ${idadeController.text}\n'
          'Localização: ${localizacaoController.text}',
        ),
      );
      },
    );
  }
}
