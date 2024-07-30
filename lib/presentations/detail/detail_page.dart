import 'package:flutter/material.dart';
import 'package:flutter_ui_property/core/constants/text_style.dart';
import 'package:flutter_ui_property/data/model/property.dart';
import 'package:flutter_ui_property/presentations/virtual_tour/virtual_tour_page.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/constants/colors.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.property});

  final Property property;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.grey100,
              blurRadius: 10,
              spreadRadius: 5,
              offset: Offset(10, 0),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${property.price}',
                style: h1TextStyle,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.black,
                  textStyle: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Schedule Tour',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 350,
                  child: Image.asset(
                    property.image[0],
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 30,
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        width: 36,
                        height: 36,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return VirtualTourPage(property: property);
                            }));
                          },
                          icon: const Icon(
                            Icons.remove_red_eye_outlined,
                            size: 20,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 36,
                        height: 36,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_border,
                            size: 20,
                          ),
                        ),
                      ),
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
                      Container(
                        decoration: BoxDecoration(
                            color: (property.category == 'House')
                                ? AppColors.primary.withOpacity(0.1)
                                : (property.category == 'Apartment')
                                    ? AppColors.orange.withOpacity(0.1)
                                    : (property.category == 'Townhouse')
                                        ? AppColors.purple.withOpacity(0.1)
                                        : (property.category == 'Warehouse')
                                            ? AppColors.red.withOpacity(0.1)
                                            : AppColors.blue.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Image.asset(
                                (property.category == 'House')
                                    ? 'assets/icons/ic_home.png'
                                    : (property.category == 'Apartment')
                                        ? 'assets/icons/ic_apartment.png'
                                        : (property.category == 'Townhouse')
                                            ? 'assets/icons/ic_townhouse.png'
                                            : (property.category == 'Warehouse')
                                                ? 'assets/icons/ic_warehouse.png'
                                                : 'assets/icons/ic_emptyland.png',
                                width: 15,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                property.category,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                    color: (property.category == 'House')
                                        ? AppColors.primary
                                        : (property.category == 'Apartment')
                                            ? AppColors.orange
                                            : (property.category == 'Townhouse')
                                                ? AppColors.purple
                                                : (property.category ==
                                                        'Warehouse')
                                                    ? AppColors.red
                                                    : AppColors.blue),
                              )
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.star,
                            size: 24,
                            color: AppColors.yellow,
                          ),
                          Text(
                            property.rating.toString(),
                            style: bodyBlackTextStyle,
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    property.title,
                    style: h1TextStyle,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_sharp,
                        size: 18,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        property.address,
                        style: bodyTextStyle,
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Facilities',
                        style: h2TextStyle,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'See All',
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 76,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: AppColors.grey200),
                              borderRadius: BorderRadius.circular(18)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                property.facilities[index][1],
                                width: 22,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                property.facilities[index][0],
                                style: bodyBlackTextStyle,
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
                      ),
                      itemCount: property.facilities.length,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Description',
                    style: h2TextStyle,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    property.description,
                    style: bodyTextStyle,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/img_profile.jpg',
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Text(
                                'Bryan Steff',
                                style: h3TextStyle,
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.verified,
                                color: AppColors.primary,
                                size: 16,
                              )
                            ],
                          ),
                          Text(
                            'Property Agent',
                            style: bodyTextStyle,
                          )
                        ],
                      ),
                      const Spacer(),
                      Container(
                        width: 36,
                        height: 36,
                        decoration: const BoxDecoration(
                          color: AppColors.primary,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.message,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: 36,
                        height: 36,
                        decoration: const BoxDecoration(
                          color: AppColors.primary,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.phone,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // const SizedBox(height: 20),
                  // const Text(
                  //   'Location',
                  //   style: h2TextStyle,
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
