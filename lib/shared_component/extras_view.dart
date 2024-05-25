import 'package:flut_grouped_buttons/flut_grouped_buttons.dart';
import 'package:flutter/material.dart';
import 'package:hotel_system/shared_component/text_in_app.dart';

class ExtrasView extends StatefulWidget {
  List data;
  String text;
  bool isRadio;
  ExtrasView({super.key,required this.data,required this.text, this.isRadio = false});

  @override
  State<ExtrasView> createState() => _ExtrasViewState();
}

class _ExtrasViewState extends State<ExtrasView> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textInApp(text: widget.text,color:  const Color.fromRGBO(246, 99, 70, 1.0),fontWeight: FontWeight.bold,fontSize: 25),
          FlutGroupedButtons(
              data: widget.data,
              isRadio: widget.isRadio ,
              activeColor: Colors.blue,
              labelStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey[800]),
              onChanged: (value){
                print(value);
              }),
        ],
      ),
    );
  }
}
