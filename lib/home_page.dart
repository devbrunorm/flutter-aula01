import 'package:flutter/material.dart';
import 'package:projetos_android/pages/hello_page1.dart';
import 'package:projetos_android/pages/hello_page2.dart';
import 'package:projetos_android/pages/hello_page3.dart';
import 'package:projetos_android/utils/nav.dart';
import 'package:projetos_android/widgets/blue_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          _text(),
          _pageView(),
          _buttons(context),
        ],
      ),
    );
  }

  _pageView() {
    return Container(
      margin: EdgeInsets.only(top:20, bottom: 20),
          height: 300,
          child: PageView(
            children:<Widget> [
              _img("assets/images/dog1.png"),
              _img("assets/images/dog2.png"),
              _img("assets/images/dog3.png"),
              _img("assets/images/dog4.png"),
              _img("assets/images/dog5.png"),
            ],
          ),
        );
  }

  _buttons(BuildContext context) {
    return Column(
          children: <Widget> [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                BlueButton("ListView", () => _onClickNavigator(context, HelloPage1())),
                BlueButton("Page 2", () => _onClickNavigator(context, HelloPage2())),
                BlueButton("Page 3", () => _onClickNavigator(context, HelloPage3())),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                BlueButton("Snack", _onClickSnack),
                BlueButton("Dialog", _onClickDialog),
                BlueButton("Toast", _onClickToast),
              ],
            ),
          ],
        );
  }

  _onClickSnack() {

  }

  _onClickDialog() {

  }

  _onClickToast() {

  }

  _text() {
    return const Text(
      "Hello World",
      style: TextStyle(
        fontSize: 30,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        decorationColor: Colors.red,
        decorationStyle: TextDecorationStyle.wavy,
      ),
    );
  }

  void _onClickNavigator(BuildContext context, Widget page) async {
      String s = await push(context, page);

      print(">> $s");
  }

  _img(img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,
    );
  }
}
