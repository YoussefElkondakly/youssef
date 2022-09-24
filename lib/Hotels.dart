import 'package:flutter/material.dart';
import 'package:micro/providertest.dart';
import 'package:provider/provider.dart';

class Hotels extends StatefulWidget {
  const Hotels({Key? key}) : super(key: key);

  @override
  State<Hotels> createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
  @override
  void initState() {
    Provider.of<HomeProvider>(context, listen: false).getAllHome();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer<HomeProvider>(builder: (context, HOT, child) {
        return HOT.data == null
            ? const Center(
                child: CircularProgressIndicator(
                  color: Colors.red,
                ),
              )
            : ListView.builder(
                itemCount: HOT.data!.data!.products!.length,
                itemBuilder: (context, index) {
                  return Container(
                    //the back Ground of the card
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 6,
                          spreadRadius: 4,
                          color: Color.fromARGB(20, 0, 0, 0),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.all(10),
                    //left and right sides
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                /*the Left side*/
                                width: 75,
                                height: 75,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 6,
                                      spreadRadius: 4,
                                      color: Color.fromARGB(20, 0, 0, 0),
                                    ),
                                  ],
                                  color: Color.fromRGBO(247, 247, 247, 1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.network(
                                  HOT.data!.data!.products![index].images
                                      .toString(),
                                ),
                              ),
                              Column(
                                //the left side
                                children: <Widget>[
                                  Text(
                                    HOT.data!.data!.products![index].name
                                        .toString(),
                                    textWidthBasis: TextWidthBasis.longestLine,
                                    maxLines: 3,
                                    style: TextStyle(
                                        color: Color.fromRGBO(135, 166, 152, 1),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),

                                  Text(
                                    HOT.data!.data!.products![index].discount
                                            .toString() +
                                        " %",
                                    style: TextStyle(
                                        color: Color.fromRGBO(135, 166, 152, 1),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    HOT.data!.data!.products![index].price
                                        .toString(),
                                    style: TextStyle(
                                        color: Color.fromRGBO(135, 166, 152, 1),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    HOT.data!.data!.products![index].oldPrice
                                        .toString(),
                                    style: TextStyle(
                                      color: Color.fromRGBO(135, 166, 152, 1),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),

                                  const SizedBox(
                                    height: 15,
                                  ),
                                  // Text(HOT.data!.data!.products![index].description.toString(),style: TextStyle(color:Color.fromRGBO(135, 166, 152, 1),fontSize: 5),),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          //the Right side
                          alignment: Alignment.topCenter,
                          width: 50,
                          height: 75,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: const Icon(
                                  Icons.bookmark_sharp,
                                  color: Color.fromRGBO(249, 190, 19, 1),
                                  size: 30,
                                ),
                              ),
                              Container(
                                child: const Text(
                                  "300m",
                                  style: TextStyle(
                                      color: Color.fromRGBO(100, 143, 127, 1)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
      }),
    );
  }
}
