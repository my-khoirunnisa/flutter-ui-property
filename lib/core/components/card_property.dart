// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/text_style.dart';

class CardProperty extends StatelessWidget {
  const CardProperty({
    super.key,
    required this.title,
    required this.image,
    required this.category,
    required this.rating,
    required this.address,
    required this.isFavorite,
    required this.bedroom,
    required this.bathroom,
    required this.price,
  });

  final String title;
  final String image;
  final String category;
  final String rating;
  final String address;
  final bool isFavorite;
  final String bedroom;
  final String bathroom;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 180,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Image.asset(
                              (category == 'House')
                                  ? 'assets/icons/ic_home.png'
                                  : (category == 'Apartment')
                                      ? 'assets/icons/ic_apartment.png'
                                      : (category == 'Townhouse')
                                          ? 'assets/icons/ic_townhouse.png'
                                          : (category == 'Warehouse')
                                              ? 'assets/icons/ic_warehouse.png'
                                              : 'assets/icons/ic_emptyland.png',
                              width: 15,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              category,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                  color: (category == 'House')
                                      ? AppColors.primary
                                      : (category == 'Apartment')
                                          ? AppColors.orange
                                          : (category == 'Townhouse')
                                              ? AppColors.purple
                                              : (category == 'Warehouse')
                                                  ? AppColors.red
                                                  : AppColors.blue),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 36,
                      height: 36,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: (isFavorite)
                            ? const Icon(
                                Icons.favorite,
                                size: 20,
                                color: AppColors.red,
                              )
                            : const Icon(
                                Icons.favorite_border_rounded,
                                size: 20,
                                color: AppColors.black,
                              ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: h3TextStyle,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.star,
                          size: 18,
                          color: AppColors.yellow,
                        ),
                        Text(
                          rating,
                          style: bodyBlackTextStyle,
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_sharp,
                      size: 18,
                      color: Colors.grey,
                    ),
                    Text(
                      address,
                      style: bodyTextStyle,
                    )
                  ],
                ),
                const SizedBox(height: 13),
                Row(
                  children: [
                    const Icon(
                      Icons.bed_outlined,
                      size: 18,
                      color: AppColors.black,
                    ),
                    Text(
                      ' $bedroom',
                      style: bodyBlackTextStyle,
                    ),
                    const SizedBox(width: 10),
                    const Icon(
                      Icons.shower_outlined,
                      size: 18,
                      color: AppColors.black,
                    ),
                    Text(
                      ' $bathroom',
                      style: bodyBlackTextStyle,
                    ),
                    const Spacer(),
                    Text(
                      '\$$price',
                      style: h2TextStyle,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
