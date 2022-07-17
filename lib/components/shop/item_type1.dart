import 'package:flutter/material.dart';

class ItemType1 extends StatelessWidget {
  final String imageUrl;
  final String brand;
  final String name;
  const ItemType1(
      {required this.imageUrl,
      required this.brand,
      required this.name,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            width: 121,
            height: 111,
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 74,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 121,
              height: 37,
              color: Color.fromRGBO(255, 255, 255, 0.7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(brand,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w600)),
                  Text(name,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w400)),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
