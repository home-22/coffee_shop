import 'package:coffee_shop/widgets/overview_widget.dart';
import 'package:coffee_shop/widgets/title_widget.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 424,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 310,
                      height: 424,
                      decoration: const BoxDecoration(
                        color: Color(0xffF5F0E6),
                        image: DecorationImage(
                          image: AssetImage("assets/lines.png"),
                        ),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 60, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Icon(
                                        Icons.arrow_back_ios_rounded,
                                        size: 20)),
                                const SizedBox(height: 20),
                                const Text(
                                  "Indonesia",
                                  style: TextStyle(fontSize: 20),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "Kapal Air",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 15),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: const Color(0xffF5C168),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Text(
                                    "Robusta Gold",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                const SizedBox(height: 25),
                                const Text(
                                  "\$6.5",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            child: Hero(
                                tag: "kapal",
                                child: Image.asset(
                                  "assets/pocket-kapal.png",
                                )),
                            bottom: -70,
                            right: -90,
                          ),
                          Positioned(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              decoration: BoxDecoration(
                                  color: const Color(0xffEC5E4F),
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                children: [
                                  const Text(
                                    "Add",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Image.asset("assets/add-to-cart.png"),
                                ],
                              ),
                            ),
                            bottom: -30,
                            left: 40,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 310,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(Icons.share_outlined),
                            SizedBox(height: 40),
                            Icon(Icons.favorite_border_rounded),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                child: Column(
                  children: [
                    const TitleWidget(title: "Overview"),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        OverviewWidget(
                          title: "1100-1650m",
                          subtitle: "Altitude",
                          imagePath: "assets/subject1.png",
                        ),
                        SizedBox(width: 30),
                        OverviewWidget(
                          title: "Washed",
                          subtitle: "Processing",
                          imagePath: "assets/subject2.png",
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: const [
                        OverviewWidget(
                          title: "Parongpong",
                          subtitle: "Location",
                          imagePath: "assets/subject3.png",
                        ),
                        SizedBox(width: 30),
                        OverviewWidget(
                          title: "SLN9",
                          subtitle: "Varietal",
                          imagePath: "assets/subject5.png",
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    const TitleWidget(title: "Description"),
                    const SizedBox(height: 20),
                    const Text(
                      "This whole choffee bean has hazelnut, honey, and grapes taste siap lah kumaha maneh weh nya nu penting ieu kaeusian paragraphna contoh aja biar kalo panjang keliatan.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.6,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
