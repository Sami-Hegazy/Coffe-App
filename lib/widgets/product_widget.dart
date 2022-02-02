import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String productImage;
  final String country;
  final String name;
  final String shape;
  final String price;
  final String heroTag;
  final VoidCallback press;

  const ProductWidget({
    Key? key,
    required this.productImage,
    required this.country,
    required this.name,
    required this.shape,
    required this.price,
    required this.heroTag,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: double.infinity,
              height: 120,
              decoration: const BoxDecoration(
                color: Color(0xffF5F0E6),
                borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
              ),
              child: Row(
                children: [
                  Image(
                    image: AssetImage(shape),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 10,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(country),
                          const SizedBox(height: 8),
                          Text(
                            name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '\$$price',
                            style: const TextStyle(
                              color: Color(0xffE48B6C),
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset('assets/Rectangle.png'),
            ),
            const Positioned(
              right: 5,
              bottom: 5,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            Positioned(
              left: 0,
              top: -29,
              child: Hero(
                tag: heroTag,
                child: Image.asset(productImage),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
