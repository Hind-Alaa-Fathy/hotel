import 'package:flutter/material.dart';
import 'package:hotel_system/shared_component/text_in_app.dart';

Widget footer({required BuildContext context, Widget? page})
{
  return Column(
    children: [
      const Padding(
        padding: EdgeInsets.all(8.0),
        child: Divider(thickness: 2,),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MaterialButton(
              color:  const Color.fromRGBO(247, 154, 2, 1.0),
              elevation: 10,
              height: 45,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
              onPressed: (){
                if(page != null)
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => page,));
                  }
              },
              child: textInApp(text: "Next",color: Colors.white,fontWeight: FontWeight.bold)),
          const SizedBox(width: 10,),
        ],
      ),
      const SizedBox(height: 20,),
    ],
  );
}