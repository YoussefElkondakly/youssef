import 'package:flutter/material.dart';
import 'package:micro/providertest.dart';
import 'package:provider/provider.dart';

class ShophomeAPI extends StatefulWidget {
  const ShophomeAPI({Key? key}) : super(key: key);

  @override
  State<ShophomeAPI> createState() => _ShophomeAPIState();
}

class _ShophomeAPIState extends State<ShophomeAPI> {
  @override
  void initState() {
    Provider.of<HomeProvider>(context, listen: false).getAllHome();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Consumer<HomeProvider>(builder:(context,Hom,child){
        return Hom.data==null?const Center(child: CircularProgressIndicator(color: Colors.red,),)
            :  GridView.builder(
          itemBuilder: (context,index){
            return Container(
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
              child:
                  Container(
                    height: 195,
                    width: 275,
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
                          height: 200,
                          width: 275,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image:  DecorationImage(
                              fit: BoxFit.fill,
                              image:NetworkImage(Hom.data!.data!.products![index].image.toString(),),

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
                                            Hom.data!.data!.products![index].discount.toString()+" %",
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                  const Icon(Icons.favorite_border_outlined,),
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
                                Hom.data!.data!.products![index].name.toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "JOE Product",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 9,
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

                                      Text("EGP "+
                                        Hom.data!.data!.products![index].price.toString(),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text("EGP "+
                                        Hom.data!.data!.products![index].oldPrice.toString(),
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
                                    child:const Icon(Icons.shopping_cart_outlined,),
                                  ),

                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),


            );
          },
          itemCount: Hom.data!.data!.products!.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            childAspectRatio: .55,
            crossAxisSpacing: 20,

            mainAxisSpacing: 20,
          ),

        );



      } ),
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