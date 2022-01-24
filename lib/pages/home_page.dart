import 'package:coffee_shop/pages/details_page.dart';
import 'package:coffee_shop/widgets/montly_coffee_widget.dart';
import 'package:coffee_shop/widgets/product_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: const Color(0xffFFF4E1),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: height * 0.223,
                    color: const Color(0xffF5C168),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "Ngo",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Pi    ",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 150,
                    child: Stack(
                      children: [
                        const Center(
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              "Top Pick",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: 5,
                            height: 30,
                            decoration: const BoxDecoration(
                              color: Color(0xffF5C168),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 100,
                    child: Center(
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          "Trending",
                          style: TextStyle(fontSize: 17, color: Colors.black54),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: double.infinity,
                    height: 150,
                    child: Center(
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          "Latest",
                          style: TextStyle(fontSize: 17, color: Colors.black54),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: const Image(
                        image: AssetImage("assets/store.png"),
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: SingleChildScrollView(
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Coffee",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          const Spacer(),
                          Image.asset("assets/search.png"),
                          const SizedBox(height: 15),
                          Image.asset("assets/filter.png"),
                        ],
                      ),
                      const MonthlyCoffeeWidget(),
                      const ProductWidget(
                        price: "5.2",
                        country: "Lembank",
                        name: "Pine Blend",
                        shape: "assets/shapes1.png",
                        heroTag: "pine",
                        productImage: "assets/pocket 1.png",
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailsPage(),
                            ),
                          );
                        },
                        child: const ProductWidget(
                          price: "6.8",
                          country: "Indonesia",
                          name: "Kapal Air",
                          shape: "assets/shapes2.png",
                          heroTag: "kapal",
                          productImage: "assets/pocket 2.png",
                        ),
                      ),
                      const ProductWidget(
                        price: "5.7",
                        country: "Japan",
                        name: "JCO Orginal",
                        shape: "assets/shapes3.png",
                        heroTag: "ico",
                        productImage: "assets/pocket 3.png",
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    ));
  }
}
