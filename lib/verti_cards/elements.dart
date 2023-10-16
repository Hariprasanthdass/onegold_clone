import 'package:flutter/material.dart';

Widget metalCategoryIcons(Color color) => Image.asset(
      'assets/images/gold-ingots.png',
      color: color,
    );

class Elements {
  final String? metal;
  final String? metalWeight;
  final String? investAmount;
  final String? investPercent;
  final String? mP;
  final String? mPrice;
  final String? cHg;
  final String? pChange;
  final Color? color;

  Elements({
    this.metal,
    this.metalWeight,
    this.cHg,
    this.investAmount,
    this.investPercent,
    this.mP,
    this.mPrice,
    this.pChange,
    this.color,
  });
}

final List<Elements> registeredElements = [
  Elements(
    metal: 'Gold',
    metalWeight: '255.69 oz',
    investAmount: '\$458,578.69',
    investPercent: '3.22%',
    mP: 'Metal Price',
    mPrice: '\$963.25',
    cHg: 'Change',
    pChange: '0.99%',
    color: const Color.fromARGB(255, 239, 206, 19),
  ),
  Elements(
    metal: 'Silver',
    metalWeight: '255.69 oz',
    investAmount: '\$48,578.9',
    investPercent: '1.22%',
    mP: 'Metal Price',
    mPrice: '\$33.25',
    cHg: 'Change',
    pChange: '0.23%',
    color: const Color.fromARGB(255, 126, 125, 116),
  ),
  Elements(
    metal: 'Platinum',
    metalWeight: '55.69 oz',
    investAmount: '\$4,578.69',
    investPercent: '0.22%',
    mP: 'Metal Price',
    mPrice: '\$63.25',
    cHg: 'Change',
    pChange: '0.25%',
    color: const Color.fromARGB(255, 211, 43, 230),
  ),
];
