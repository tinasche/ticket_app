import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/widgets/textstyle_fourth.dart';
import 'package:ticket_app/base/widgets/textstyle_third.dart';

class AppColTextLayout extends StatelessWidget {
  const AppColTextLayout(
      {super.key,
      required this.topTitle,
      required this.bottomTitle,
      this.alignment = CrossAxisAlignment.start,
      this.isColoured});

  final String topTitle;
  final String bottomTitle;
  final bool? isColoured;
  final CrossAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        topTitle.contains("VISA")
            ? Row(
                children: [
                  // Container(
                  //   width: 30,
                  //   height: 30,
                  //   decoration: const BoxDecoration(
                  //     image: DecorationImage(
                  //         image: AssetImage(AppMedia.visa),
                  //         fit: BoxFit.fitWidth,
                  //         scale: 0.5),
                  //   ),
                  // ),
                  Image.asset(AppMedia.visa, scale: 11,),
                  TextStyleThird(title: topTitle.substring(4),isColoured: isColoured,)
                ],
              )
            : TextStyleThird(
                title: topTitle,
                isColoured: isColoured,
              ),
        const SizedBox(
          height: 5,
        ),
        TextStyleFourth(
          title: bottomTitle,
          isColoured: isColoured,
        )
      ],
    );
  }
}
