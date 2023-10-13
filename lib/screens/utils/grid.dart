import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoesapp/cart/cart_provider.dart';

import '../../widgets/myapp_clr.dart';
import '../../widgets/mycard.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: Product.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1 / 1.3, crossAxisCount: 2),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15),
            child: mycard(
              Price: Product[index][2],
              imag: Product[index][0],
              text: Product[index][1],
              type: ProductType[index],
              position: index,
            ),
          );
        },
      ),
    );
  }
}
