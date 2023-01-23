// To parse this JSON data, do
//
//     final allProduct = allProductFromJson(jsonString);

import 'dart:convert';

AllProduct allProductFromJson(String str) => AllProduct.fromJson(json.decode(str));

String allProductToJson(AllProduct data) => json.encode(data.toJson());

class AllProduct {
  AllProduct({
    required this.data,
    required this.message,
    required this.status,
  });

  Data data;
  String message;
  num status;

  factory AllProduct.fromJson(Map<String, dynamic> json) => AllProduct(
    data: Data.fromJson(json["data"]),
    message: json["message"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
    "message": message,
    "status": status,
  };
}

class Data {
  Data({
    required this.allProducts,
    required this.inProducts,
    required this.outProducts,
  });

  List<AllProductElement> allProducts;
  num inProducts;
  num outProducts;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    allProducts: List<AllProductElement>.from(json["all_products"].map((x) => AllProductElement.fromJson(x))),
    inProducts: json["in_products"],
    outProducts: json["out_products"],
  );

  Map<String, dynamic> toJson() => {
    "all_products": List<dynamic>.from(allProducts.map((x) => x.toJson())),
    "in_products": inProducts,
    "out_products": outProducts,
  };
}

class AllProductElement {
  AllProductElement({
    required this.createdDate,
    required this.globalPrice,
    required this.lastStockIn,
    required this.measurementUnit,
    required this.productChamicalDetails,
    this.productDescription,
    required this.productId,
    this.productImage,
    required this.productInstructions,
    required this.productLiveImg,
    required this.productLiveLink,
    required this.productMfgCompany,
    required this.productName,
    this.productNote,
    required this.productPackingDetails,
    required this.productStock,
    required this.status,
    required this.stockPrice,
    required this.stockUnit,
    required this.stockUpdateDate,
    required this.tax,
    required this.today,
  });

  String createdDate;
  double globalPrice;
  num lastStockIn;
  String measurementUnit;
  String productChamicalDetails;
  dynamic productDescription;
  num productId;
  dynamic productImage;
  String productInstructions;
  String productLiveImg;
  String productLiveLink;
  String productMfgCompany;
  String productName;
  dynamic productNote;
  String productPackingDetails;
  num productStock;
  num status;
  num stockPrice;
  String stockUnit;
  String stockUpdateDate;
  num tax;
  DateTime today;

  factory AllProductElement.fromJson(Map<String, dynamic> json) => AllProductElement(
    createdDate: json["created_date"],
    globalPrice: json["global_price"]?.toDouble(),
    lastStockIn: json["last_stock_in"],
    measurementUnit: json["measurement_unit"],
    productChamicalDetails: json["product_chamical_details"],
    productDescription: json["product_description"],
    productId: json["product_id"],
    productImage: json["product_image"],
    productInstructions: json["product_instructions"],
    productLiveImg: json["product_live_img"],
    productLiveLink: json["product_live_link"],
    productMfgCompany: json["product_mfg_company"],
    productName: json["product_name"],
    productNote: json["product_note"],
    productPackingDetails: json["product_packing_details"],
    productStock: json["product_stock"],
    status: json["status"],
    stockPrice: json["stock_price"],
    stockUnit: json["stock_unit"],
    stockUpdateDate: json["stock_update_date"],
    tax: json["tax"],
    today: DateTime.parse(json["today"]),
  );

  Map<String, dynamic> toJson() => {
    "created_date": createdDate,
    "global_price": globalPrice,
    "last_stock_in": lastStockIn,
    "measurement_unit": measurementUnit,
    "product_chamical_details": productChamicalDetails,
    "product_description": productDescription,
    "product_id": productId,
    "product_image": productImage,
    "product_instructions": productInstructions,
    "product_live_img": productLiveImg,
    "product_live_link": productLiveLink,
    "product_mfg_company": productMfgCompany,
    "product_name": productName,
    "product_note": productNote,
    "product_packing_details": productPackingDetails,
    "product_stock": productStock,
    "status": status,
    "stock_price": stockPrice,
    "stock_unit": stockUnit,
    "stock_update_date": stockUpdateDate,
    "tax": tax,
    "today": "${today.year.toString().padLeft(4, '0')}-${today.month.toString().padLeft(2, '0')}-${today.day.toString().padLeft(2, '0')}",
  };
}
