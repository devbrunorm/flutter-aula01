import 'package:flutter/material.dart';
import 'package:projetos_android/widgets/blue_button.dart';

class HelloPage3 extends StatelessWidget {
  const HelloPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 3"),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return Center(
        child: BlueButton(
            "Voltar",
            () => _onClickVoltar(context))
    );
  }

  _onClickVoltar (context) {
    Navigator.pop(context, "Tela 3");
  }
}
