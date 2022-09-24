import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'MODELS.dart';
class HomeProvider with ChangeNotifier {

  Beeb? data;
  String? Token;

Future<dynamic>getAllHome() async{
  Dio dio=Dio();
  dio.options.headers={
    "lang":"en",
    "Content-Type":"application/json",
"Authorization":Token,
  };
  final response=await dio.get("https://student.valuxapps.com/api/home");
  data=Beeb.fromJson(response.data);
  notifyListeners();
}

}

class CateGoryProvider with ChangeNotifier{
  CateGory? categories;
  String? token;
  Future<dynamic>getAllCates()async{
    Dio dio=Dio();
    dio.options.headers={
      "Accept-Language":"ar",
      "Content-Type":"application/json",
      "Authorization":token,
    };

    final response=await dio.get("https://student.valuxapps.com/api/categories");
    categories=CateGory.fromJson(response.data);
    notifyListeners();
  }
}

class RegisterProvider with ChangeNotifier{
  Rigester? register;
  String? token;
  Map<String,dynamic>? DataReg;
  Future<dynamic>rEgister({
      String? name,
      String? email,
      String? password,
      String? phone,
  } )async{
    Dio dio=Dio();
    dio.options.headers={
      "Accept-Language":"ar",
      "Content-Type":"application/json",
      "Authorization":token,
    };
    DataReg={
        "name":name,
        "email":email,
        "password":password,
        "phone":phone,

    };
    final response=await dio.post("https://student.valuxapps.com/api/register",data: DataReg,);
    register=Rigester.fromJson(response.data);
    notifyListeners();
  }
}

class LoginProvider with ChangeNotifier{
  LoginModel? login;
  String? token;
  Map<String,dynamic>? DataLOG;
  Future<dynamic>lOgIn({
    String? name,
    String? email,
    String? password,
    String? phone,
  } )async{
    Dio dio=Dio();
    dio.options.headers={
      "Accept-Language":"ar",
      "Content-Type":"application/json",
      "Authorization":token,
    };
    DataLOG={
      "name":name,
      "email":email,
      "password":password,
      "phone":phone,
    };
    final response=await dio.post("https://student.valuxapps.com/api/login",data: DataLOG,);
    login=LoginModel.fromJson(response.data);
    notifyListeners();
  }
}

class Logis with ChangeNotifier{
  LoginModel? logis;
  String? token;

  Future<dynamic>lOgIs()async{
    Dio dio=Dio();
    dio.options.headers={
      "Accept-Language":"ar",
      "Content-Type":"application/json",
      "Authorization":token,
    };

    final response=await dio.post("https://student.valuxapps.com/api/login",);
    logis=LoginModel.fromJson(response.data);
    notifyListeners();
  }
}

