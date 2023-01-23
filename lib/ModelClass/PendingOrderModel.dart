// To parse this JSON data, do
//
//     final pendingOrderr = pendingOrderrFromJson(jsonString);

import 'dart:convert';

PendingOrderr pendingOrderrFromJson(String str) => PendingOrderr.fromJson(json.decode(str));

String pendingOrderrToJson(PendingOrderr data) => json.encode(data.toJson());

class PendingOrderr {
  PendingOrderr({
    required this.data,
    required this.message,
    required this.status,
  });

  Data data;
  String message;
  num status;

  factory PendingOrderr.fromJson(Map<String, dynamic> json) => PendingOrderr(
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
    required this.completeOrders,
    required this.pendingOrders,
    required this.totalSale,
    required this.totalStock,
  });

  List<Order> completeOrders;
  List<Order> pendingOrders;
  num totalSale;
  num totalStock;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    completeOrders: List<Order>.from(json["complete_orders"].map((x) => Order.fromJson(x))),
    pendingOrders: List<Order>.from(json["pending_orders"].map((x) => Order.fromJson(x))),
    totalSale: json["total_sale"],
    totalStock: json["total_stock"],
  );

  Map<String, dynamic> toJson() => {
    "complete_orders": List<dynamic>.from(completeOrders.map((x) => x.toJson())),
    "pending_orders": List<dynamic>.from(pendingOrders.map((x) => x.toJson())),
    "total_sale": totalSale,
    "total_stock": totalStock,
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
