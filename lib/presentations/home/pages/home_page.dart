import 'package:flutter/material.dart';
import 'package:flutter_ui_property/core/components/card_property.dart';
import 'package:flutter_ui_property/core/constants/colors.dart';
import 'package:flutter_ui_property/core/constants/text_style.dart';
import 'package:flutter_ui_property/data/model/property.dart';
import 'package:flutter_ui_property/presentations/detail/detail_page.dart';

import '../widgets/header_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List categories = [
    ['assets/icons/ic_home.png', 'House'],
    ['assets/icons/ic_apartment.png', 'Apartment'],
    ['assets/icons/ic_townhouse.png', 'Townhouse'],
    ['assets/icons/ic_warehouse.png', 'Warehouse'],
    ['assets/icons/ic_emptyland.png', 'Empty Land'],
  ];

  List recommendedProperties = [];
  List nearProperties = [];

  @override
  void initState() {
    recommendedProperties = properties
        .where((property) => property.isFavorite.toString().contains('true'))
        .toList();
    nearProperties = properties
        .where((property) => property.isNear.toString().contains('true'))
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: HeaderHome(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: 45,
                child: TextField(
                  style: const TextStyle(color: AppColors.grey100),
                  // onChanged: _handleSearch,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.grey100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Search for Items",
                      hintStyle: const TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 157, 157, 157),
                          fontWeight: FontWeight.w400),
                      prefixIcon: const Icon(Icons.search),
                      prefixIconColor: Colors.black,
                      suffixIcon: const Icon(Icons.tune),
                      suffixIconColor: AppColors.black),
                ),
              ),
            ),
            SizedBox(
              height: 90,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: categories.length,
                  crossAxisSpacing: 8.0,
                  childAspectRatio: 1 / 2,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: AppColors.grey100, shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Center(
                            child: Image.asset(
                              categories[index][0],
                              width: 24,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        categories[index][1],
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recommended Property',
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
              height: 300,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailPage(
                            property: recommendedProperties[index]);
                      }));
                    },
                    child: SizedBox(
                      width: 290,
                      child: CardProperty(
                        title: recommendedProperties[index].title,
                        image: recommendedProperties[index].image[0],
                        category: recommendedProperties[index].category,
                        rating: recommendedProperties[index].rating.toString(),
                        address: recommendedProperties[index].address,
                        isFavorite: recommendedProperties[index].isFavorite,
                        bedroom: recommendedProperties[index]
                            .facilities[0][0]
                            .toString()
                            .replaceAll(" Bedroom", ""),
                        bathroom: recommendedProperties[index]
                            .facilities[1][0]
                            .toString()
                            .replaceAll(" Bathroom", ""),
                        price: recommendedProperties[index].price.toString(),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                itemCount: recommendedProperties.length,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Nearby You',
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
              height: 300,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailPage(
                            property: recommendedProperties[index]);
                      }));
                    },
                    child: SizedBox(
                      width: 290,
                      child: CardProperty(
                        title: nearProperties[index].title,
                        image: nearProperties[index].image[0],
                        category: nearProperties[index].category,
                        rating: nearProperties[index].rating.toString(),
                        address: nearProperties[index].address,
                        isFavorite: nearProperties[index].isFavorite,
                        bedroom: recommendedProperties[index]
                            .facilities[0][0]
                            .toString()
                            .replaceAll(" Bedroom", ""),
                        bathroom: recommendedProperties[index]
                            .facilities[1][0]
                            .toString()
                            .replaceAll(" Bathroom", ""),
                        price: nearProperties[index].price.toString(),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                itemCount: nearProperties.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
