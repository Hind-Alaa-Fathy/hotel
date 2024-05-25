import 'package:flutter/material.dart';
import 'package:hotel_system/screens/room_list.dart';
import 'package:hotel_system/shared_component/adult_childern.dart';
import 'package:hotel_system/shared_component/check_in_out_date.dart';
import 'package:hotel_system/shared_component/extras_view.dart';
import 'package:hotel_system/shared_component/footer.dart';
import 'package:hotel_system/shared_component/text_in_app.dart';

class HotelHomePage extends StatelessWidget {
   HotelHomePage({super.key});
  DateTime selectedInDate = DateTime.now();
  double sliderValue = 0;
  List extrasData = [
    'Breakfast (10 USD/Day)',
    'Internet WiFi (5 USD/Day)',
    'Parking (5 USD/Day)',
    'Swimming Pool (10 USD/Day)',
  ];
  List viewData =[
    'City View',
  ] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: const Color.fromRGBO(253, 170, 65, 1.0),
        title: textInApp(text: "Android ATC Hotel", color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              margin: const EdgeInsets.only(left: 5,right: 5,top: 15,bottom: 10),
              decoration: BoxDecoration(
                  image: const DecorationImage(image: AssetImage("assets/images/hotel.png"),fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(3)
              ),
            ),
            DatePicker(
              text: "Check-in Date :",
              context: context,
              selectedDate: selectedInDate,
            ),
            DatePicker(
              text: "Check-out Date :",
              context: context,
              selectedDate: selectedInDate,
            ),
            ChooseNumberOfPersons(
              text: "Adults:",
              sliderValue: sliderValue,
            ),
            ChooseNumberOfPersons(
              text: "Children:",
              sliderValue: sliderValue,
            ),
            ExtrasView(text: "Extras" ,data: extrasData,),
            ExtrasView(text: "View" ,data: viewData,isRadio: true,),
            footer(context: context,page: const RoomList()),
          ],
        ),
      ),
    );
  }
}

