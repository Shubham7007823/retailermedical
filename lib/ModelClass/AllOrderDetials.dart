// To parse this JSON data, do
//
//     final allOrderDetials = allOrderDetialsFromJson(jsonString);

import 'dart:convert';

AllOrderDetials allOrderDetialsFromJson(String str) => AllOrderDetials.fromJson(json.decode(str));

String allOrderDetialsToJson(AllOrderDetials data) => json.encode(data.toJson());

class AllOrderDetials {
  AllOrderDetials({
    required this.data,
    required this.message,
    required this.status,
  });

  Data data;
  String message;
  num status;

  factory AllOrderDetials.fromJson(Map<String, dynamic> json) => AllOrderDetials(
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
    required this.order,
  });

  Order order;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    order: Order.fromJson(json["order"]),
  );

  Map<String, dynamic> toJson() => {
    "order": order.toJson(),
  };
}

class Order {
  Order({
    required this.customerId,
    required this.customerName,
    required this.customerPhone,
    required this.gst,
    required this.invoiceNo,
    required this.items,
    required this.orderDate,
    required this.orderId,
    required this.storeId,
    required this.totalPrice,
    required this.visibility,
  });

  num customerId;
  String customerName;
  String customerPhone;
  num gst;
  String invoiceNo;
  List<Item> items;
  String orderDate;
  num orderId;
  num storeId;
  num totalPrice;
  bool visibility;

  factory Order.fromJson(Map<String, dynamic> json) => Order(
    customerId: json["customer_id"],
    customerName: json["customer_name"],
    customerPhone: json["customer_phone"],
    gst: json["gst"],
    invoiceNo: json["invoice_no"],
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
    orderDate: json["order_date"],
    orderId: json["order_id"],
    storeId: json["store_id"],
    totalPrice: json["total_price"],
    visibility: json["visibility"],
  );

  Map<String, dynamic> toJson() => {
    "customer_id": customerId,
    "customer_name": customerName,
    "customer_phone": customerPhone,
    "gst": gst,
    "invoice_no": invoiceNo,
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
    "order_date": orderDate,
    "order_id": orderId,
    "store_id": storeId,
    "total_price": totalPrice,
    "visibility": visibility,
  };
}

class Item {
  Item({
    required this.price,
    required this.productId,
    this.productImage,
    required this.productName,
    required this.qty,
  });

  num price;
  num productId;
  dynamic productImage;
  String productName;
  num qty;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    price: json["price"],
    productId: json["product_id"],
    productImage: json["product_image"],
    productName: json["product_name"],
    qty: json["qty"],
  );

  Map<String, dynamic> toJson() => {
    "price": price,
    "product_id": productId,
    "product_image": productImage,
    "product_name": productName,
    "qty": qty,
  };
}
