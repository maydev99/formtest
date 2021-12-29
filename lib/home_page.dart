import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  TextEditingController controller6 = TextEditingController();
  TextEditingController controller7 = TextEditingController();
  TextEditingController controller8 = TextEditingController();
  TextEditingController controller9 = TextEditingController();
  TextEditingController controller10 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FormTest'),
      ),
      body: _textFieldList(),
    );
  }

  ListView _textFieldList() {
    return ListView(
      children: [
        Image.network(
            'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/sunset-quotes-21-1586531574.jpg?crop=1.00xw:0.752xh;0,0.0601xh&resize=768:*'),

        _myTextFormField(),
        _myTextFormField(),
        _myTextFormField(),
        _myTextFormField(),
        _myTextFormField(),
        _myTextFormField(),
        _myTextFormField(),
        _myTextFormField(),
        _myTextFormField(),
        _myTextFormField(),
      ],
    );
  }

  Padding _myTextField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller1,
        decoration: const InputDecoration(
            border: OutlineInputBorder(), labelText: 'MyText'),
        textInputAction: TextInputAction.next,
      ),
    );
  }

  Padding _myTextFormField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(32),
        child: TextFormField(
          controller: controller1,
          textInputAction: TextInputAction.next,
          decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'hint',
              contentPadding: EdgeInsets.only(left: 20, top: 12, bottom: 12)
          ),
        ),
      ),
    );
  }
}
