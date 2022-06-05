import 'package:flutter/material.dart';
import 'package:store/constants.dart';
import 'package:store/models/Product.dart';
import 'package:store/screens/details_screen.dart';
import 'package:store/widgets/home/product_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Column(
          children: [
            const SizedBox(
              height: kDefaultPadding / 2,
            ),
            Expanded(
                child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 70),
                  decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    itemIndex: index,
                    product: products[index],
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: products[index],
                            )),
                      );
                    },
                  ),
                ),
              ],
            )),
          ],
        ));
  }
}
