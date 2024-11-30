import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_data.dart';
import 'package:ticket_app/screens/widgets/hotel.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Hotes"),
        backgroundColor: AppStyles.bgColor,
      ),
      body: GridView.builder(
        // padding: const EdgeInsets.symmetric(horizontal: 8),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 10,
              childAspectRatio: 0.7),
          itemCount: hotelList.length,
          itemBuilder: (context, index) {
          var hotel = hotelList[index];
            return Hotel(hotel: hotel);
          }),
    );
  }
}
