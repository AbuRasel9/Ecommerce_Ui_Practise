// To parse this JSON data, do
//
//     final productDetails = productDetailsFromJson(jsonString);

import 'dart:convert';

ProductDetails productDetailsFromJson(String str) => ProductDetails.fromJson(json.decode(str));

String productDetailsToJson(ProductDetails data) => json.encode(data.toJson());

class ProductDetails {
  List<ProductDetail> productDetails;

  ProductDetails({
    required this.productDetails,
  });

  factory ProductDetails.fromJson(Map<String, dynamic> json) => ProductDetails(
    productDetails: List<ProductDetail>.from(json["ProductDetails"].map((x) => ProductDetail.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "ProductDetails": List<dynamic>.from(productDetails.map((x) => x.toJson())),
  };
}

class ProductDetail {
  int id;
  String productName;
  String productImage;
  double productRatingStar;
  int productPrice;

  ProductDetail({
    required this.id,
    required this.productName,
    required this.productImage,
    required this.productRatingStar,
    required this.productPrice,
  });

  factory ProductDetail.fromJson(Map<String, dynamic> json) => ProductDetail(
    id: json["ID"],
    productName: json["ProductName"],
    productImage: json["ProductImage"],
    productRatingStar: json["ProductRatingStar"]?.toDouble(),
    productPrice: json["ProductPrice"],
  );

  Map<String, dynamic> toJson() => {
    "ID": id,
    "ProductName": productName,
    "ProductImage": productImage,
    "ProductRatingStar": productRatingStar,
    "ProductPrice": productPrice,
  };
}
