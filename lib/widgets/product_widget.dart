import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String? productImage;
  final String? country;
  final String? name;
  final String? shape;
  final String? price;

  const ProductWidget(
      {Key? key,
      this.productImage,
      this.country,
      this.name,
      this.shape,
      this.price})
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
                const Image(image: AssetImage("assets/shapes1.png")),
                const SizedBox(width: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Lembank"),
                      SizedBox(height: 8),
                      Text(
                        "Pine Blend",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        "\$5.2",
                        style: TextStyle(
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
              tag: "pine",
              child: Image.asset("assets/pocket 1.png"),
            ),
            left: 20,
            top: -25,
          ),
        ],
      ),
    );
  }
}
