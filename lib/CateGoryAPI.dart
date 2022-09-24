import 'package:flutter/material.dart';
import 'package:micro/providertest.dart';
import 'package:provider/provider.dart';
class CateGoryAPI extends StatefulWidget {
  const CateGoryAPI({Key? key}) : super(key: key);

  @override
  State<CateGoryAPI> createState() => _CateGoryAPIState();
}

class _CateGoryAPIState extends State<CateGoryAPI> {
  @override
  void initState(){
    Provider.of<CateGoryProvider>(context,listen: false).getAllCates();
    // TODO implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CateGoryProvider>(
        builder: (context,SAYED,child) {
      return SAYED.categories==null? Center(child: CircularProgressIndicator(color: Colors.red,),)
          :ListView.builder(
          itemCount:SAYED.categories!.data!.data!.length,
          itemBuilder: (context,index){
            return Column(
              children:<Widget> [
               Image.network( SAYED.categories!.data!.data![index].image.toString()),
              Center(child: Text(SAYED.categories!.data!.data![index].name.toString(),style: TextStyle(backgroundColor: Colors.grey.withOpacity(.35),),),),
              ],
            );
          });

    });
  }
}
