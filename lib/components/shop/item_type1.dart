import 'package:flutter/material.dart';

class ItemType1 extends StatelessWidget {
  final String imageUrl;
  final String brand;
  final String name;
  final double width;
  const ItemType1(
      {required this.imageUrl,
      required this.brand,
      required this.name,
      this.width = 121,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, '/shop/item_view_by_codi'),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              width: width,
              height: width / 1.09,
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: width,
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
      ),
    );
  }
}
