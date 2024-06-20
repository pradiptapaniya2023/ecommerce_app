import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  List itmesCarousel = [
    "asset/images/Bg.jpg",
    "asset/images/Inside bg.jpg",
    "asset/images/Bg.jpg",
    "asset/images/Inside bg.jpg",
    "asset/images/Bg.jpg",
    "asset/images/Inside bg.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(children: [
            FlutterCarousel(
                items: itmesCarousel.map((item) {
                  return Image.asset(item, fit: BoxFit.cover);
                }).toList(),
                options: CarouselOptions(showIndicator: true)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 5),
                  child: Text(
                    "Calvin Clein",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontFamily: "familyfont"),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 5),
                  child: Text(
                    "Calvin Clein Regular fit silm fit shirt",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: "familyfont"),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Image.asset("asset/images/Group 4.png")),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    "87 Reviews",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        fontFamily: "familyfont"),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Text(
                    "\$35",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        fontFamily: "familyfont"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, top: 12),
                  child: Text(
                    "\$40.25",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        fontFamily: "familyfont"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6, top: 12),
                  child: Text(
                    "15% OFF",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.orangeAccent[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        fontFamily: "familyfont"),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: Text(
                    "Color :",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        fontFamily: "familyfont"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 7, top: 20),
                  child: Text(
                    "White",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        fontFamily: "familyfont"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 120),
                  child: Text(
                    // textAlign: TextAlign.end,
                    "Only 5 Left",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        fontFamily: "familyfont"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 90,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 5),
                  child: Text(
                    "Size",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        fontFamily: "familyfont"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 205),
                  child: Text(
                    // textAlign: TextAlign.end,
                    "Size Chart",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        fontFamily: "familyfont"),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 170,
                  width: 350,
                  child: Card(
                    color: Colors.white70,
                    elevation: 5,
                    shadowColor: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40, right: 95),
                          child: Text(
                            "Delivery Options",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                                fontFamily: "familyfont"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 45, right: 45),
                          child: Container(
                            height: 65,
                            width: 280,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: TextField(
                                  decoration: InputDecoration(
                                      suffixIcon: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "CHECK",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontFamily: "familyfont",
                                          ),
                                        ),
                                      ),
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      hintText: "Enter PIN Code",
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontFamily: "familyfont",
                                      )),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 280,
                    width: 350,
                    child: Card(
                      color: Colors.white70,
                      elevation: 5,
                      shadowColor: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, right: 197),
                            child: Text(
                              "Size",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                  fontFamily: "familyfont"),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 46),
                                child: Text(
                                  "- Fabric",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontFamily: "familyfont",
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 10),
                                child: Text(
                                  "- Cotton",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    fontFamily: "familyfont",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 46),
                                child: Text(
                                  "- Length",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontFamily: "familyfont",
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 10),
                                child: Text(
                                  "- Regular",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    fontFamily: "familyfont",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 46),
                                child: Text(
                                  "- Neck",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontFamily: "familyfont",
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 10),
                                child: Text(
                                  "- Roun Neck",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    fontFamily: "familyfont",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 46),
                                child: Text(
                                  "- Pattern",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                    fontFamily: "familyfont",
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 10),
                                child: Text(
                                  "- Graphic Print",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    fontFamily: "familyfont",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text(
                                  "View More",
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    fontFamily: "familyfont",
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 46),
                                      child: Text(
                                        ">",
                                        style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                          fontFamily: "familyfont",
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 500,
                    width: 350,
                    child: Card(
                      color: Colors.white70,
                      elevation: 5,
                      shadowColor: Colors.white,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              "Ratings & Reviews ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 19,
                                  fontFamily: "familyfont"),
                            ),
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, left: 10),
                                child: Text(
                                  "4.8 / 5 ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      fontFamily: "familyfont"),
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      "Overrall Rating ",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          fontFamily: "familyfont"),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 1),
                                    child: Text(
                                      "527 Ratings ",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          fontFamily: "familyfont"),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Colors.blueAccent),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    "Rate",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 20,
                                        fontFamily: "familyfont"),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 46, top: 5),
                                child: Image.asset("asset/images/Group 4.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 7, top: 5),
                                child: Image.asset("asset/images/Group 4.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 7, top: 5),
                                child: Image.asset("asset/images/Group 4.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 7, top: 5),
                                child: Image.asset("asset/images/Group 4.png"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 7, top: 5),
                                child: Image.asset("asset/images/Group 4.png"),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, left: 46),
                                child: Text(
                                  "Amazing !",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    fontFamily: "familyfont",
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 46),
                            child: Text(
                              "An amazing fit. I am somewhere around 6ft and ordered 40 size , It's a perfect  fit and  quality is worth the price ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontFamily: "familyfont",
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 46),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 7),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 7),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, right: 25),
                            child: Text(
                              "David Johnson , 1st Jan 2020",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontFamily: "familyfont",
                              ),
                            ),
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Text(
                                  "View All 76 Reviews",
                                  style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    fontFamily: "familyfont",
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(right: 40),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 46),
                                      child: Text(
                                        ">",
                                        style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                          fontFamily: "familyfont",
                                        ),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
