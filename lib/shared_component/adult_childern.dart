import 'package:flutter/material.dart';
import 'package:hotel_system/shared_component/text_in_app.dart';

class ChooseNumberOfPersons extends StatefulWidget {
  double sliderValue;
  String text;
   ChooseNumberOfPersons({super.key,required this.sliderValue,required this.text});

  @override
  State<ChooseNumberOfPersons> createState() => _ChooseNumberOfPersonsState();
}

class _ChooseNumberOfPersonsState extends State<ChooseNumberOfPersons> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const SizedBox(width: 10,),
        textInApp(text: widget.text,color:  const Color.fromRGBO(246, 99, 70, 1.0),fontWeight: FontWeight.bold,fontSize: 25),
        const SizedBox(width: 10,),
        textInApp(text:"${widget.sliderValue.round()}",color:  const Color.fromRGBO(246, 99, 70, 1.0),fontWeight: FontWeight.bold,fontSize: 25),
        const SizedBox(width: 10,),
        Expanded(
          child: Slider(
              value: widget.sliderValue,
              max: 100,
              divisions: 100,
              label: "${widget.sliderValue.round()}",
              activeColor: Colors.blue,
              onChanged: (value)
              {
                widget.sliderValue = value;
                setState(() {

                });
              }
          ),
        )
      ],
    );
  }
}
