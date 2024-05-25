import 'package:flutter/material.dart';
import 'package:hotel_system/shared_component/text_in_app.dart';

class DatePicker extends StatefulWidget {
   DateTime selectedDate;
   BuildContext context;
   String text;
   DatePicker({super.key, required  this.selectedDate, required  this.context,required this.text });

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10,),
        textInApp(text: widget.text,color:  const Color.fromRGBO(246, 99, 70, 1.0),fontWeight: FontWeight.bold,fontSize: 25),
        const SizedBox(width: 10,),
        textInApp(text: "${widget.selectedDate.year}-${widget.selectedDate.month}-${widget.selectedDate.day}",color:   Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),
        IconButton(onPressed: () async{
          var date = await showDatePicker(
              context: context,
              initialDate: widget.selectedDate,
              firstDate: DateTime(2024),
              lastDate: DateTime(2026)
          );
          if(date != null)
          {
            widget.selectedDate = date;
          }
          setState(() {});
        }, icon: const Icon(Icons.calendar_month,color: Color.fromRGBO(236, 112, 75, 1.0),size: 28,))
      ],
    );
  }
}
