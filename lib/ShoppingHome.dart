import 'package:flutter/material.dart';
import 'package:micro/providertest.dart';
import 'package:provider/provider.dart';
import 'ProductModle.dart';
class Shophome extends StatefulWidget {
  const Shophome({Key? key}) : super(key: key);

  @override
  State<Shophome> createState() => _ShophomeState();
}

class _ShophomeState extends State<Shophome> {
  List<Productmodel>GR=[
    Productmodel('https://www.tuvie.com/wp-content/uploads/hp-ascetic-briefcase-concept-laptop-by-andre-fangueiro8.jpg', "40%", "White coat for winter", "ZARA", "EGP 55.00", "EGP 77.00"),
    Productmodel('https://g.foolcdn.com/editorial/images/462798/crocs-classic.jpg', "50%", "Crocs size 45", "crocs", "EGP 1000", "EGP 2000"),
    Productmodel('https://www.northernthreads.co.uk/images/adidas-originals-trefoil-t-shirt-red-p27053-389656_medium.jpg', "20%", "T-shirt Red", "Adidas", "EGP 500.00", "EGP 750.00"),
  ];

  List <ProductBrand>Brands=[
    ProductBrand('https://logos-world.net/wp-content/uploads/2020/05/Zara-Logo.png',Colors.white),
    ProductBrand('https://1000logos.net/wp-content/uploads/2017/02/Colors-of-the-HM-Logo.jpg',const Color.fromRGBO(224, 0, 8, 1),),
    ProductBrand('http://logok.org/wp-content/uploads/2014/04/Apple-Logo-black.png',Colors.white,),
    ProductBrand('https://pngimg.com/uploads/nike/nike_PNG11.png',Colors.white,),
    ProductBrand('http://3.bp.blogspot.com/-c5C-uob69cM/UgnmnzQRWcI/AAAAAAAAAT0/zLWaZS14IRA/s1600/Logo+Chanel+n567.jpg',Colors.white,),
    ProductBrand('https://logos-download.com/wp-content/uploads/2016/04/Crocs_emblem_symbol_logo_logotype.png',Colors.black,),
    ProductBrand('https://logos-world.net/wp-content/uploads/2020/05/Zara-Logo.png',Colors.white),
    ProductBrand('https://1000logos.net/wp-content/uploads/2017/02/Colors-of-the-HM-Logo.jpg',const Color.fromRGBO(224, 0, 8, 1),),
    ProductBrand('http://logok.org/wp-content/uploads/2014/04/Apple-Logo-black.png',Colors.white,),
    ProductBrand('https://pngimg.com/uploads/nike/nike_PNG11.png',Colors.white,),
    ProductBrand('http://3.bp.blogspot.com/-c5C-uob69cM/UgnmnzQRWcI/AAAAAAAAAT0/zLWaZS14IRA/s1600/Logo+Chanel+n567.jpg',Colors.white,),
    ProductBrand('https://logos-download.com/wp-content/uploads/2016/04/Crocs_emblem_symbol_logo_logotype.png',Colors.black,),ProductBrand('https://logos-world.net/wp-content/uploads/2020/05/Zara-Logo.png',Colors.white),
    ProductBrand('https://1000logos.net/wp-content/uploads/2017/02/Colors-of-the-HM-Logo.jpg',const Color.fromRGBO(224, 0, 8, 1),),
    ProductBrand('http://logok.org/wp-content/uploads/2014/04/Apple-Logo-black.png',Colors.white,),
    ProductBrand('https://pngimg.com/uploads/nike/nike_PNG11.png',Colors.white,),
    ProductBrand('http://3.bp.blogspot.com/-c5C-uob69cM/UgnmnzQRWcI/AAAAAAAAAT0/zLWaZS14IRA/s1600/Logo+Chanel+n567.jpg',Colors.white,),
    ProductBrand('https://logos-download.com/wp-content/uploads/2016/04/Crocs_emblem_symbol_logo_logotype.png',Colors.black,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            width: 1000,
            height: 100,
            child:
            ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Brands.length,
                itemBuilder: (context,index){
                  return Container(
                    padding: const EdgeInsets.all(5),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(boxShadow: const [
                      BoxShadow(
                        blurRadius: 6,
                        spreadRadius: 4,
                        color: Color.fromARGB(15, 0, 0, 0),
                      ),
                    ], color: Brands[index].Bcolor, shape: BoxShape.circle),
                    child: Center(
                      child: Image.network(Brands[index].BImg),
                    ),
                  );
                }),
          ),
          Expanded(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                childAspectRatio: .65,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              children: <Widget>[

                Gridres(GR[0].PImg,GR[0].salepercent, GR[0].Pname, GR[0].PBrand, GR[0].Pafter, GR[0].Pbefore),
                Gridres(GR[1].PImg,GR[1].salepercent, GR[1].Pname, GR[1].PBrand, GR[1].Pafter, GR[1].Pbefore),
                Gridres(GR[2].PImg,GR[2].salepercent, GR[2].Pname, GR[2].PBrand, GR[2].Pafter, GR[2].Pbefore),
                Gridres(GR[0].PImg,GR[0].salepercent, GR[0].Pname, GR[0].PBrand, GR[0].Pafter, GR[0].Pbefore),
                Gridres(GR[1].PImg,GR[1].salepercent, GR[1].Pname, GR[1].PBrand, GR[1].Pafter, GR[1].Pbefore),
                Gridres(GR[2].PImg,GR[2].salepercent, GR[2].Pname, GR[2].PBrand, GR[2].Pafter, GR[2].Pbefore),
                Gridres(GR[0].PImg,GR[0].salepercent, GR[0].Pname, GR[0].PBrand, GR[0].Pafter, GR[0].Pbefore),
                Gridres(GR[1].PImg,GR[1].salepercent, GR[1].Pname, GR[1].PBrand, GR[1].Pafter, GR[1].Pbefore),
                Gridres(GR[2].PImg,GR[2].salepercent, GR[2].Pname, GR[2].PBrand, GR[2].Pafter, GR[2].Pbefore),

              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget Gridres(String product,String salepercent,String productname,String prand,String after,String before){
    return  Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            blurRadius: 6,
            spreadRadius: 4,
            color: Color.fromARGB(15, 0, 0, 0),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 175,
            width: 275,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image:  DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(product),
              ),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Stack(
                      alignment: AlignmentDirectional.topCenter,
                      children: <Widget>[
                        Container(
                          color: const Color.fromRGBO(192, 225, 250, 1),
                          height: 55,
                          width: 35,
                        ),

                        Column(
                          children: <Widget> [
                            const Icon(
                              Icons.flash_on,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              salepercent,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),

                      ],
                    ),
                    IconButton(onPressed: (){
                      null;
                    },
                      icon: Icon(Icons.favorite_border_outlined,),)
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  productname,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                Text(
                  prand,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget> [
                        Text(
                          after,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          before,
                          style: const TextStyle(
                              color: Colors.grey,
                              decoration:
                              TextDecoration.lineThrough,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                        width: 35,
                        height: 35,
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle),
                        child: IconButton(onPressed: (){
                          null;
                        }, icon: Icon(Icons.shopping_cart_outlined,),)
                    ),

                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
















// Widget infoLis(String photo, color) {
//   return Container(
//     padding: const EdgeInsets.all(5),
//     width: 50,
//     height: 50,
//     decoration: BoxDecoration(boxShadow: const [
//       BoxShadow(
//         blurRadius: 6,
//         spreadRadius: 4,
//         color: Color.fromARGB(15, 0, 0, 0),
//       ),
//     ], color: color, shape: BoxShape.circle),
//     child: Center(
//       child: Image.network(photo),
//     ),
//   );
// }










// infoLis(
//     'https://logos-download.com/wp-content/uploads/2016/04/Crocs_emblem_symbol_logo_logotype.png',
//     Colors.black),
// infoLis(
//     'https://logos-world.net/wp-content/uploads/2020/05/Zara-Logo.png',
//     Colors.white),
// infoLis(
//   'https://1000logos.net/wp-content/uploads/2017/02/Colors-of-the-HM-Logo.jpg',
//   const Color.fromRGBO(224, 0, 8, 1),
// ),
// infoLis(
//     'http://logok.org/wp-content/uploads/2014/04/Apple-Logo-black.png',
//     Colors.white),
// infoLis('https://pngimg.com/uploads/nike/nike_PNG11.png',
//     Colors.white),
// infoLis(
//     'http://3.bp.blogspot.com/-c5C-uob69cM/UgnmnzQRWcI/AAAAAAAAAT0/zLWaZS14IRA/s1600/Logo+Chanel+n567.jpg',
//     Colors.white),
// infoLis(
//     'https://logos-download.com/wp-content/uploads/2016/04/Crocs_emblem_symbol_logo_logotype.png',
//     Colors.black),