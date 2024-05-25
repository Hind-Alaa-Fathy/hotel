import 'package:flutter/material.dart';
import 'package:hotel_system/shared_component/footer.dart';
import '../shared_component/card.dart';
import '../shared_component/text_in_app.dart';

class RoomList extends StatelessWidget {
  const RoomList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar:  AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: const Icon(Icons.arrow_back,color: Colors.white,),),
        toolbarHeight: 90,
        backgroundColor: const Color.fromRGBO(253, 170, 65, 1.0),
        title: textInApp(text: "Rooms List", color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),
      ),
      body: Column(
        children: [
          RoomCard(
            title: "King Room",
            subTitle: "A room with a king-sized bed",
            imagePath: "assets/images/king_room.jpg",
          ),
          RoomCard(
            title: "Double Room",
            subTitle: "A room assigned to two people",
            imagePath: "assets/images/double_room.jpg",
          ),
          RoomCard(
            title: "Family Room",
            subTitle: "A room assigned to three or four people",
            imagePath: "assets/images/family room.png",
          ),
          const Spacer(),
          footer(context: context),
        ],
      ),
    );
  }
}
