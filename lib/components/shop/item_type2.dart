import 'package:flutter/material.dart';

class ItemType2 extends StatelessWidget {
  final String imageUrl;
  final String brand;
  final String name;
  final String price;
  final String discountRatio;
  String? desc;

  ItemType2(
      {required this.imageUrl,
      required this.brand,
      required this.name,
      required this.price,
      required this.discountRatio,
      this.desc,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, '/shop/item_view'),
      child: Column(
        children: [
          Image.network(
            imageUrl,
          ),
          const SizedBox(height: 3),
          Text('$brand $name',
              style:
                  const TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
          desc == null
              ? const SizedBox(height: 0)
              : SizedBox(
                  width: 104,
                  child: Text(desc!, style: const TextStyle(fontSize: 10))),
          SizedBox(
            width: 104,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('$price원', style: const TextStyle(fontSize: 10)),
                Text('$discountRatio% 할인',
                    style: const TextStyle(fontSize: 10)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
