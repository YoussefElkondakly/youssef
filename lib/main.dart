import 'package:flutter/material.dart';
import 'package:micro/SignIn.dart';
import 'package:micro/providertest.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<HomeProvider>(
        create: (_)=> HomeProvider(),),
      ChangeNotifierProvider<CateGoryProvider>(
        create: (_)=> CateGoryProvider(),),
      ChangeNotifierProvider<RegisterProvider>(
        create: (_)=> RegisterProvider(),),
      ChangeNotifierProvider<LoginProvider>(
        create: (_)=>LoginProvider(),),
      ChangeNotifierProvider<Logis>(
        create: (_)=>Logis(),),
    ],
      child:MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Task With BNB",
      theme: ThemeData(primarySwatch: Colors.brown),
      home: SignIn(),
    ),
    );
  }
}
// ChangeNotifierProvider<HomeProvider>(
// create: (_)=> HomeProvider(),