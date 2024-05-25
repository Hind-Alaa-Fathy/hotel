import 'package:flutter/material.dart';
import 'package:hotel_system/shared_component/text_in_app.dart';

class RoomCard extends StatefulWidget {
  String imagePath;
  String title;
  String subTitle;
   RoomCard({super.key,required this.imagePath,required this.title,required this.subTitle});

  @override
  State<RoomCard> createState() => _RoomCardState();
}

class _RoomCardState extends State<RoomCard> {
 bool showText = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 15,left: 10,right: 10),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                offset: const Offset(0,3),
                spreadRadius: 4,
                blurRadius: 3
              )
            ],
            borderRadius: BorderRadius.circular(5)
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 200,
                    height: 100,
                    decoration:  BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      image: DecorationImage(image: AssetImage(widget.imagePath),fit: BoxFit.cover),

                    ),
                  ),
                  const SizedBox(width: 27,),
                  Expanded(
                    flex: 2,
                      child: textInApp(text: widget.title,color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 23)),
                  Expanded(
                      child: IconButton(
                          onPressed: (){
                           setState(() {
                             showText = !showText;
                           });
                          },
                      icon:  Icon(
                        showText? Icons.keyboard_arrow_down_rounded : Icons.keyboard_arrow_up_outlined,
                        size: 30,
                        shadows: const [Shadow(color: Colors.grey,offset: Offset(0,2),blurRadius: 2)]
                        ,)
                  )),

                ],
              ),
              const SizedBox(height: 10,),
              showText ? textInApp(text: widget.subTitle,color: Colors.blueGrey,fontWeight: FontWeight.bold,fontSize: 23): SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
