import 'package:flutter/material.dart';

class MonthlyCoffeeWidget extends StatelessWidget {
  const MonthlyCoffeeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 30),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            height: 150,
            decoration: const BoxDecoration(
                color: Color(0xffF5F0E6),
                borderRadius: BorderRadius.only(topRight: Radius.circular(30))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Monthly\nCoffee",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                const Spacer(),
                Row(
                  children: const [
                    Text(
                      "\$12.9",
                      style: TextStyle(
                        color: Color(0xffE4886C),
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Text(
                      "/month",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            top: -25,
            child: Image.asset("assets/box.png"),
          ),
        ],
      ),
    );
  }
}
