import 'package:flutter/material.dart';
class Productmodel{
  late final String PImg;
  late final String Pname;
  late final String PBrand;
  late final String salepercent;
  late final String Pafter;
  late final String Pbefore;
  Productmodel(this.PImg,this.salepercent,this.Pname,this.PBrand,this.Pafter,this.Pbefore,);
}
class ProductBrand{
  late final String BImg;
  late final Color Bcolor;

  ProductBrand(this.BImg,this.Bcolor);
}
class BannersModel{
  int? id;
  String? image;
  BannersModel(this.id,this.image);
  BannersModel.fromJson(Map<String,dynamic>json){
    id=json['id'];
    image=json['image'];
  }
}
class ProductsModel{
  int? id;
  String? Name;
  String? image;
  dynamic Price;
  dynamic OldPrice;
  dynamic Discount;
  dynamic Discribtion;
  ProductsModel(this.image,this.id,this.Discribtion,this.Name,this.Discount,this.Price,this.OldPrice);
  ProductsModel.fromJson(Map<String, dynamic> json)
      :id=json['id'],
        Name=json['name'],
        Price=json['price'],
        OldPrice=json['old_price'],
        Discount=json['discount'],
        Discribtion=json['description'],
        image=json['image'];
//  ProductsModel(this.OldPrice,this.Price,this.Discount,this.Name,this.image,this.id);

//   AirQualityModel.fromJson(Map<String, dynamic> json)
//       : pm25 = json['p2'].toDouble(),
//         co2 = json['co'].toDouble(),
//         humidity = json['hm'].toDouble(),
//         temperature = json['tp'].toDouble();
// }
}
class homedatamodle{
  List<ProductsModel>products=[];
  homedatamodle.FromJson(Map<String,dynamic>json){
      json["products"].forEach((v) {
        products.add(ProductsModel.fromJson(v));
      });

  }
}
