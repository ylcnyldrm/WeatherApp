import 'package:flutter/material.dart';

class SehirSec extends StatefulWidget {
  @override
  _SehirSecState createState() => _SehirSecState();
}

class _SehirSecState extends State<SehirSec> {
  //formdaki alana girilen değeri elde etmek için yaptık
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sehir Seç"),
      ),
      body: Form(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _textController,
                  decoration: InputDecoration(
                      labelText: "Şehir",
                      hintText: "Şehir Seç",
                      border: OutlineInputBorder()),
                ),
              ),
            ),
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.pop(context, _textController.text);
                }),
          ],
        ),
      ),
    );
  }
}
