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
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
