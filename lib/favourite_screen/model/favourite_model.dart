import 'package:cloud_firestore/cloud_firestore.dart';

class FavouriteModel {
  String productName;
  String productImage;
  String productBackdrop;
  int productPrice;
  String productDetails;
  String productShop;
  num productOffer;
  num productRating;
  FavouriteModel({
    required this.productPrice,
    required this.productOffer,
    required this.productRating,
    required this.productName,
    required this.productDetails,
    required this.productImage,
    required this.productBackdrop,
    required this.productShop,
  });

  factory FavouriteModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    return FavouriteModel(
      productShop: snapshot["productShop"],
      productName: snapshot["productName"],
      productOffer: snapshot["productOffer"],
      productRating: snapshot["productRating"],
      productImage: snapshot["productImage"],
      productPrice: snapshot["productPrice"],
      productDetails: snapshot["productDetails"],
      productBackdrop: snapshot["productBackdrop"],
    );
  }

  Map<String, dynamic> toSnapshot() {
    return {
      "productShop": productShop,
      "productName": productName,
      "productOffer": productOffer,
      "productRating": productRating,
      "productImage": productImage,
      "productPrice": productPrice,
      "productDetails": productDetails,
    };
  }
}