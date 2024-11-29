import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
      final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: size.width * .42,
          height: 430,
          padding:
          const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 2)
              ]),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                        image: AssetImage(AppMedia.planeSit),
                        fit: BoxFit.cover)),
                height: 190,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "20% discount on the early booking of this flight. Don't miss",
                style: AppStyles.headline2,
              )
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  width: size.width * .44,
                  height: 210,
                  padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color(0xff3a88b8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discount \nfor survey",
                        style:
                        AppStyles.headline1.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Take the survey about our services and get your discount",
                        overflow: TextOverflow.fade,
                        style:
                        AppStyles.headline4.copyWith(color: Colors.white, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right:-45,
                  top: -40,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: AppStyles.circleColor),
                      color: Colors.transparent,

                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15,),
            Container(
              width: size.width * .44,
              height: 210,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: AppStyles.ticketRed,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Take love",
                    style:
                    AppStyles.headline1.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "😍🥰😘",
                    style:
                    AppStyles.headline2,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
