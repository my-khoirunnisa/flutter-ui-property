import 'package:flutter/material.dart';
import 'package:flutter_ui_property/core/constants/text_style.dart';
import '../../../core/constants/colors.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppColors.grey200),
              shape: BoxShape.circle),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: AppColors.black,
            ),
          ),
        ),
        Column(
          children: [
            Text(
              'Your location',
              style: bodyTextStyle,
            ),
            const Text(
              'Surabaya, ID',
              style: h3TextStyle,
            )
          ],
        ),
        Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: AppColors.grey200),
                shape: BoxShape.circle),
            child: Stack(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none,
                    color: AppColors.black,
                  ),
                ),
                Positioned(
                  top: 12,
                  right: 12,
                  child: Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            )),
      ],
    );
  }
}
