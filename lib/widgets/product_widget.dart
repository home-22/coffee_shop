import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String productImage;
  final String country;
  final String name;
  final String shape;
  final String price;
  final String heroTag;

  const ProductWidget(
      {Key? key,
      required this.productImage,
      required this.country,
      required this.name,
      required this.shape,
      required this.price,
      required this.heroTag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            height: 120,
            decoration: const BoxDecoration(
              color: Color(0xffF5F0E6),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
              ),
            ),
            child: Row(
              children: [
                Image(
                  image: AssetImage(shape),
                ),
                const SizedBox(width: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(country),
                      const SizedBox(height: 8),
                      Text(
                        name,
                        style: const TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Text(
                        "\$$price",
                        style: const TextStyle(
                          color: Color(0xffE4886C),
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: Image.asset("assets/Rectangle.png"),
            right: 0,
            bottom: 0,
          ),
          const Positioned(
            child: Icon(Icons.add, color: Colors.white),
            right: 5,
            bottom: 5,
          ),
          Positioned(
            child: Hero(
              tag: heroTag,
              child: Image.asset(productImage),
            ),
            left: 20,
            top: -25,
          ),
        ],
      ),
    );
  }
}
