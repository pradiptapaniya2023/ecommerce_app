import 'package:flutter/material.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        title: const Text(
          "Men's T-shirt",
          style: TextStyle(
              color: Colors.black, fontFamily: "fontfamily", fontSize: 20),
        ),
        actions: [
          InkWell(
              onTap: () {},
              child: const Image(
                image: AssetImage("asset/images/search-normal.png"),
              )),
          const SizedBox(
            width: 10,
          ),
          InkWell(
              onTap: () {},
              child: const Image(
                image: AssetImage("asset/images/Icon-03.png"),
              )),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: GridView.builder(
        itemCount: 30,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.6,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 170,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  textAlign: TextAlign.start,
                  "Essence Mascara Lash Princess",
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: "familyfont"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$9.99",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: "familyfont"),
                    ),
                    Text(
                      "\$${10}",
                      style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: "familyfont"),
                    ),
                    Text(
                      "7.17 % OFF",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.orange[600],
                          fontSize: 14,
                          fontFamily: "familyfont"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      child: const Image(
                          image: AssetImage("asset/images/Group 4.png")),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 13),
                      child: Text(
                        textAlign: TextAlign.start,
                        "4.3 (41)",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            fontSize: 15,
                            fontFamily: "familyfont"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        elevation: 20,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.filter), label: "Filter"),
          BottomNavigationBarItem(
              icon: Icon(Icons.short_text_rounded), label: "Short By"),
        ],
      ),
    );
  }
}
