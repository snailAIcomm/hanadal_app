import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'package:hanadal_app/components/utils/show_cart_bottom_sheet.dart';

void showPurchaseBottomSheet(BuildContext context) {
  showCupertinoModalBottomSheet(
    expand: false,
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) => PurchaseBottomSheet(),
  );
}

class PurchaseBottomSheet extends StatelessWidget {
  const PurchaseBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              DropdownButtonFormField<String?>(
                decoration: const InputDecoration(
                  labelText: '옵션 1',
                  labelStyle: TextStyle(fontSize: 15, color: Color(0xffcfcfcf)),
                ),
                onChanged: (String? newValue) {
                  print(newValue);
                },
                items: [null, 'M', 'F']
                    .map<DropdownMenuItem<String?>>((String? i) {
                  return DropdownMenuItem<String?>(
                    value: i,
                    child: Text({'M': '남성', 'F': '여성'}[i] ?? '비공개'),
                  );
                }).toList(),
              ),
              DropdownButtonFormField<String?>(
                decoration: const InputDecoration(
                  labelText: '옵션 2',
                  labelStyle: TextStyle(fontSize: 15, color: Color(0xffcfcfcf)),
                ),
                onChanged: (String? newValue) {
                  print(newValue);
                },
                items: [null, 'M', 'F']
                    .map<DropdownMenuItem<String?>>((String? i) {
                  return DropdownMenuItem<String?>(
                    value: i,
                    child: Text({'M': '남성', 'F': '여성'}[i] ?? '비공개'),
                  );
                }).toList(),
              ),
              SizedBox(height: 10),
              Container(
                color: Colors.grey.shade200,
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('블랙/S'),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.remove)),
                        Text('1'),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.add)),
                        Expanded(child: SizedBox(width: 1)),
                        Text('50,000 원'),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  children: const [
                    Text('총 상품 금액'),
                    Expanded(child: SizedBox(width: 1)),
                    Text('50,000 원'),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                      showCartBottomSheet(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 167,
                      height: 43,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(),
                      ),
                      child: Text('장바구니 담기'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 167,
                      height: 43,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(),
                      ),
                      child: Text('바로 구매'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
