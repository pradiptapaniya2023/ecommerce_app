import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Homepage_UI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return State_Homepage();
  }
}

class State_Homepage extends State<Homepage_UI> {
  TextEditingController searchController = TextEditingController();
  List<CategoriesClass>? catList;

  // RecommendedClass? rc;

  @override
  void initState() {
    super.initState();
    categoriesFetch();
    // fetchApiData2();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {},
              child: const Image(
                image: AssetImage("asset/images/menu.png"),
              )),
          title: const Text(
            "Home",
            style: TextStyle(
                color: Colors.black, fontFamily: "fontfamily", fontSize: 20),
          ),
          actions: [
            InkWell(
                onTap: () {},
                child: const Image(
                  image: AssetImage("asset/images/Notification Icon Group.png"),
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.all(20),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black)),
                child: TextField(
                  controller: searchController,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: "familyfont"),
                  decoration: InputDecoration(
                      hintText: "Search Anything",
                      hintStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: "familyfont"),
                      contentPadding: const EdgeInsets.all(10),
                      prefixIcon: Container(
                        margin: const EdgeInsets.only(right: 15),
                        child: const Image(
                          height: 20,
                          color: Colors.black,
                          image: AssetImage("asset/images/search-normal.png"),
                        ),
                      ),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none),
                )),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 22),
                  child: const Text(
                    "Categories",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "familyfont"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 140),
                  child: const Text(
                    "View All >",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontFamily: "familyfont"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 150,
              child: catList == null
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: catList!.length,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.all(5),
                      itemExtent: 90,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.grey, shape: BoxShape.circle),
                              child: Center(
                                child: Text(
                                  "${catList![index].name.toString().substring(0, 1)}",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontFamily: "familyfont"),
                                ),
                              ),
                            ),
                            Text(
                              "${catList![index].name}",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: "familyfont"),
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        );
                      },
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: const Text(
                "Recommended for you",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: "familyfont"),
              ),
            ),
            // Expanded(
            //   child: rc == null
            //       ? Center(child: CircularProgressIndicator())
            //       : GridView.builder(
            //           itemCount: rc!.products!.length,
            //           gridDelegate:
            //               const SliverGridDelegateWithFixedCrossAxisCount(
            //             crossAxisCount: 2,
            //             mainAxisSpacing: 10,
            //             crossAxisSpacing: 10,
            //             childAspectRatio: 0.7,
            //           ),
            //           itemBuilder: (context, index) {
            //             return InkWell(
            //               onTap: () {
            //                 print("===${rc!.products![index]}");
            //                 // nav---
            //               },
            //               child: Column(
            //                 children: [
            //                   Container(
            //                     height: 110,
            //                     width: 180,
            //                     decoration: BoxDecoration(
            //                         borderRadius: BorderRadius.circular(10),
            //                         image: DecorationImage(
            //                             image: NetworkImage(
            //                                 "${rc!.products![index].thumbnail}"),
            //                             fit: BoxFit.cover)),
            //                   ),
            //                   const SizedBox(
            //                     height: 10,
            //                   ),
            //                   Text(
            //                     textAlign: TextAlign.start,
            //                     "${rc!.products![index].title}",
            //                     overflow: TextOverflow.ellipsis,
            //                     style: const TextStyle(
            //                         color: Colors.black,
            //                         fontSize: 20,
            //                         fontFamily: "familyfont"),
            //                   ),
            //                   const SizedBox(
            //                     height: 10,
            //                   ),
            //                   Row(
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceEvenly,
            //                     children: [
            //                       Text(
            //                         textAlign: TextAlign.start,
            //                         "\$${rc!.products![index].price}",
            //                         style: const TextStyle(
            //                             fontWeight: FontWeight.bold,
            //                             color: Colors.black,
            //                             fontSize: 17,
            //                             fontFamily: "familyfont"),
            //                       ),
            //                       Text(
            //                         textAlign: TextAlign.start,
            //                         "\$${10}",
            //                         style: const TextStyle(
            //                             decoration: TextDecoration.lineThrough,
            //                             fontWeight: FontWeight.bold,
            //                             color: Colors.grey,
            //                             fontSize: 17,
            //                             fontFamily: "familyfont"),
            //                       ),
            //                       Text(
            //                         textAlign: TextAlign.start,
            //                         "${rc!.products![index].discountPercentage}% OFF",
            //                         style: TextStyle(
            //                             fontWeight: FontWeight.bold,
            //                             color: Colors.orange[600],
            //                             fontSize: 17,
            //                             fontFamily: "familyfont"),
            //                       ),
            //                     ],
            //                   ),
            //                   const SizedBox(
            //                     height: 10,
            //                   ),
            //                   Row(
            //                     children: [
            //                       Container(
            //                         margin: const EdgeInsets.only(left: 20),
            //                         child: const Image(
            //                             image: AssetImage(
            //                                 "asset/images/Group 4.png")),
            //                       ),
            //                       Container(
            //                         margin: const EdgeInsets.only(left: 20),
            //                         child: Text(
            //                           textAlign: TextAlign.start,
            //                           "${rc!.products![index].rating}",
            //                           style: const TextStyle(
            //                               fontWeight: FontWeight.bold,
            //                               color: Colors.black,
            //                               fontSize: 17,
            //                               fontFamily: "familyfont"),
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                 ],
            //               ),
            //             );
            //           },
            //         ),
            // ),
          ],
        ),
      ),
    );
  }

  categoriesFetch() async {
    var url = Uri.https('https://dummyjson.com/products/categories');
    var response = await http.post(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    List<dynamic> data = json.decode(response.body);
    data.map((item) => CategoriesClass.fromJson(item)).toList();
  }
}

class CategoriesClass {
  String? slug;
  String? name;
  String? url;

  CategoriesClass({this.slug, this.name, this.url});

  CategoriesClass.fromJson(Map<String, dynamic> json) {
    slug = json['slug'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['slug'] = this.slug;
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}

class RecommendedClass {
  List<Products>? products;
  int? total;
  int? skip;
  int? limit;

  RecommendedClass({this.products, this.total, this.skip, this.limit});

  RecommendedClass.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    data['skip'] = this.skip;
    data['limit'] = this.limit;
    return data;
  }
}

class Products {
  int? id;
  String? title;
  String? description;
  String? category;
  double? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  List<String>? tags;
  String? brand;
  String? sku;
  int? weight;
  Dimensions? dimensions;
  String? warrantyInformation;
  String? shippingInformation;
  String? availabilityStatus;
  List<Reviews>? reviews;
  String? returnPolicy;
  int? minimumOrderQuantity;
  Meta? meta;
  List<String>? images;
  String? thumbnail;

  Products(
      {this.id,
      this.title,
      this.description,
      this.category,
      this.price,
      this.discountPercentage,
      this.rating,
      this.stock,
      this.tags,
      this.brand,
      this.sku,
      this.weight,
      this.dimensions,
      this.warrantyInformation,
      this.shippingInformation,
      this.availabilityStatus,
      this.reviews,
      this.returnPolicy,
      this.minimumOrderQuantity,
      this.meta,
      this.images,
      this.thumbnail});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    category = json['category'];
    price = json['price'];
    discountPercentage = json['discountPercentage'];
    rating = json['rating'];
    stock = json['stock'];
    tags = json['tags'].cast<String>();
    brand = json['brand'];
    sku = json['sku'];
    weight = json['weight'];
    dimensions = json['dimensions'] != null
        ? new Dimensions.fromJson(json['dimensions'])
        : null;
    warrantyInformation = json['warrantyInformation'];
    shippingInformation = json['shippingInformation'];
    availabilityStatus = json['availabilityStatus'];
    if (json['reviews'] != null) {
      reviews = <Reviews>[];
      json['reviews'].forEach((v) {
        reviews!.add(new Reviews.fromJson(v));
      });
    }
    returnPolicy = json['returnPolicy'];
    minimumOrderQuantity = json['minimumOrderQuantity'];
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
    images = json['images'].cast<String>();
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['category'] = this.category;
    data['price'] = this.price;
    data['discountPercentage'] = this.discountPercentage;
    data['rating'] = this.rating;
    data['stock'] = this.stock;
    data['tags'] = this.tags;
    data['brand'] = this.brand;
    data['sku'] = this.sku;
    data['weight'] = this.weight;
    if (this.dimensions != null) {
      data['dimensions'] = this.dimensions!.toJson();
    }
    data['warrantyInformation'] = this.warrantyInformation;
    data['shippingInformation'] = this.shippingInformation;
    data['availabilityStatus'] = this.availabilityStatus;
    if (this.reviews != null) {
      data['reviews'] = this.reviews!.map((v) => v.toJson()).toList();
    }
    data['returnPolicy'] = this.returnPolicy;
    data['minimumOrderQuantity'] = this.minimumOrderQuantity;
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    data['images'] = this.images;
    data['thumbnail'] = this.thumbnail;
    return data;
  }
}

class Dimensions {
  double? width;
  double? height;
  double? depth;

  Dimensions({this.width, this.height, this.depth});

  Dimensions.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    height = json['height'];
    depth = json['depth'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['width'] = this.width;
    data['height'] = this.height;
    data['depth'] = this.depth;
    return data;
  }
}

class Reviews {
  int? rating;
  String? comment;
  String? date;
  String? reviewerName;
  String? reviewerEmail;

  Reviews(
      {this.rating,
      this.comment,
      this.date,
      this.reviewerName,
      this.reviewerEmail});

  Reviews.fromJson(Map<String, dynamic> json) {
    rating = json['rating'];
    comment = json['comment'];
    date = json['date'];
    reviewerName = json['reviewerName'];
    reviewerEmail = json['reviewerEmail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rating'] = this.rating;
    data['comment'] = this.comment;
    data['date'] = this.date;
    data['reviewerName'] = this.reviewerName;
    data['reviewerEmail'] = this.reviewerEmail;
    return data;
  }
}

class Meta {
  String? createdAt;
  String? updatedAt;
  String? barcode;
  String? qrCode;

  Meta({this.createdAt, this.updatedAt, this.barcode, this.qrCode});

  Meta.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    barcode = json['barcode'];
    qrCode = json['qrCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['barcode'] = this.barcode;
    data['qrCode'] = this.qrCode;
    return data;
  }
}
