import 'package:flutter/material.dart';

class Property {
  final String title;
  final String description;
  final List image;
  final String category;
  final int price;
  final String address;
  final double rating;
  final List facilities;
  final bool isFavorite;
  final bool isNear;

  Property(
      {required this.title,
      required this.description,
      required this.image,
      required this.category,
      required this.price,
      required this.address,
      required this.rating,
      required this.facilities,
      required this.isFavorite,
      required this.isNear});
}

final List properties = [
  Property(
    title: 'Modern Apartment',
    description:
        'Experience urban living in a sleek, modern apartment with open-concept design and stunning city views. Enjoy high-end amenities and a prime downtown location.',
    category: 'Apartment',
    image: [
      'assets/images/img_1.jpg',
      'assets/images/img_2.jpg',
      'assets/images/img_3.jpg',
      'assets/images/img_4.jpg',
    ],
    price: 1500,
    address: '123 Main St, City Center',
    rating: 4.5,
    facilities: [
      ['4 Bedroom', 'assets/icons/ic_bed.png'],
      ['2 Bathroom', 'assets/icons/ic_shower.png'],
      ['Pool Area', 'assets/icons/ic_pool.png'],
      ['Gym Spot', 'assets/icons/ic_gym.png'],
      ['Parking', 'assets/icons/ic_garage.png']
    ],
    isFavorite: true,
    isNear: true,
  ),
  Property(
    title: 'Cozy House',
    description:
        'Find comfort in this cozy house featuring a warm living room, updated kitchen, and serene backyard. Located in a friendly, peaceful neighborhood.',
    category: 'House',
    image: [
      'assets/images/img_2.jpg',
      'assets/images/img_1.jpg',
      'assets/images/img_3.jpg',
      'assets/images/img_4.jpg',
    ],
    price: 800,
    address: '456 Country Lane, Countryside',
    rating: 4.2,
    facilities: [
      ['3 Bedroom', 'assets/icons/ic_bed.png'],
      ['1 Bathroom', 'assets/icons/ic_shower.png'],
      ['Garden', 'assets/icons/ic_garden.png'],
      ['Fireplace', 'assets/icons/ic_fireplace.png'],
      ['BBQ Area', 'assets/icons/ic_bbq.png']
    ],
    isFavorite: false,
    isNear: false,
  ),
  Property(
    title: 'Luxury Townhouse',
    description:
        'Embrace elegance in this luxury townhouse with expansive living areas, top-tier appliances, and a private rooftop terrace. Situated in an exclusive, upscale community.',
    category: 'Townhouse',
    image: [
      'assets/images/img_3.jpg',
      'assets/images/img_1.jpg',
      'assets/images/img_2.jpg',
      'assets/images/img_4.jpg',
    ],
    price: 5000,
    address: '789 Beachfront Blvd, Coastal Area',
    rating: 4.8,
    facilities: [
      ['4 Bedroom', 'assets/icons/ic_bed.png'],
      ['2 Bathroom', 'assets/icons/ic_shower.png'],
      ['Pool Spot', 'assets/icons/ic_pool.png'],
      ['Spa Spot', 'assets/icons/ic_spa.png']
    ],
    isFavorite: true,
    isNear: false,
  ),
  Property(
    title: 'Suburban Warehouse',
    description:
        'Relax in this charming suburban house with a spacious yard and modern amenities. Perfect for families, located in a top-rated school district.',
    category: 'Warehouse',
    image: [
      'assets/images/img_4.jpg',
      'assets/images/img_1.jpg',
      'assets/images/img_2.jpg',
      'assets/images/img_3.jpg',
    ],
    price: 1200,
    address: '101 Suburb St, Suburbia',
    rating: 4.0,
    facilities: [
      ['6 Bedroom', 'assets/icons/ic_bed.png'],
      ['3 Bathroom', 'assets/icons/ic_shower.png'],
      ['Car Garage', 'assets/icons/ic_garage.png'],
      ['Backyard', 'assets/icons/ic_backyard.png'],
      ['Playground', 'assets/icons/ic_playground.png']
    ],
    isFavorite: false,
    isNear: true,
  ),
];
