import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key, required this.hotel});

  final Map<String, dynamic> hotel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(right: 16),
      // width: size.width * 0.6,
      // height: 350,
      decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(24)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            // height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/${hotel["image"]}'))),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              hotel["place"],
              overflow: TextOverflow.ellipsis,
              style:
                  AppStyles.headline1.copyWith(color: AppStyles.pensiveColor),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              '\$${hotel["price"].toString()}/night',
              style:
                  AppStyles.headline2.copyWith(color: AppStyles.pensiveColor),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              hotel["destination"],
              style: AppStyles.headline3.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
