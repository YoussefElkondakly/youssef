import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Container(

              decoration: BoxDecoration(color: Colors.red,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/img1.jpg')
                ),
              ),
              width: 500,
              height: 200,
            ),
            Container(
              margin: EdgeInsets.all(125),
              width: 125,
              height: 125,
              decoration:
              BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/img.png',
                ),
                radius: 125,
              ),
            ),
            Positioned(
              left: 75,
              top: 260,
              child: Text(
                "Youssef Elkondakly",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 0,
                top: 300,
                right: 0,
                bottom: 0,
              ),
              width: 500,
              height: 500,
              color: Colors.white,
              child: Column(
                //mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(prefixIcon: Icon(Icons.work)),
                    initialValue: "SoftWare engineer Flutter Designer ",
                    readOnly: true,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(prefixIcon: Icon(Icons.work)),
                    initialValue: "SoftWare engineer Flutter Designer ",
                    readOnly: true,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(prefixIcon: Icon(Icons.work)),
                    initialValue: "SoftWare engineer Flutter Designer ",
                    readOnly: true,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(prefixIcon: Icon(Icons.work)),
                    initialValue: "SoftWare engineer Flutter Designer ",
                    readOnly: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:micro/providertest.dart';
// import 'package:provider/provider.dart';
// class Profile extends StatefulWidget {
//   const Profile({Key? key}) : super(key: key);
//   @override
//   State<Profile> createState() => _ProfileState();
// }
//
// class _ProfileState extends State<Profile> {
//   @override
//   void initState(){
//     Provider.of<Logis>(context,listen: false).lOgIs();
//     // TODO implement initState
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return  ListView(
//         children: [
//           Consumer<Logis>(builder: (context,logData,child){
//           return Stack(
//             alignment: AlignmentDirectional.topCenter,
//             children: [
//               Container(
//                 decoration: const BoxDecoration(
//                   color: Colors.red,
//                   image: DecorationImage(
//                       fit: BoxFit.fill,
//                       image: AssetImage('assets/images/img1.jpg')),
//                 ),
//                 width: 500,
//                 height: 200,
//               ),
//               Container(
//                 margin: const EdgeInsets.all(125),
//                 width: 125,
//                 height: 125,
//                 decoration:
//                 const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
//                 child: CircleAvatar(
//                   backgroundImage: NetworkImage(logData.logis!.data!.image.toString(),),
//                   radius: 125,
//                 ),
//               ),
//               Positioned(
//                 left: 75,
//                 top: 260,
//                 child: Text(
//                   logData.logis!.data!.name.toString(),
//                   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.all(10),
//                 margin: const EdgeInsets.only(
//                   left: 0,
//                   top: 300,
//                   right: 0,
//                   bottom: 0,
//                 ),
//                 width: 500,
//                 height: 500,
//                 color: Colors.white,
//                 child: Column(
//                   children: <Widget>[
//                     TextFormField(
//                       decoration: InputDecoration(
//                         prefixIcon: const Icon(
//                           Icons.work,
//                           color: Color.fromRGBO(224, 0, 8, 1),
//                         ),
//                         border: OutlineInputBorder(
//                           borderSide: const BorderSide(
//                               color: Color.fromRGBO(224, 0, 8, 1),
//                               style: BorderStyle.solid),
//                           borderRadius: BorderRadius.circular(35),
//                         ),
//                       ),
//                       initialValue: "SoftWare engineer Flutter Designer ",
//                       readOnly: true,
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     TextFormField(
//                       decoration: InputDecoration(
//                         prefixIcon: const Icon(
//                           Icons.school,
//                           color: Color.fromRGBO(224, 0, 8, 1),
//                         ),
//                         border: OutlineInputBorder(
//                           borderSide: const BorderSide(
//                             color: Color.fromRGBO(224, 0, 8, 1),
//                             style: BorderStyle.solid,
//                           ),
//                           borderRadius: BorderRadius.circular(35),
//                         ),
//                       ),
//                       initialValue: "Studying Faculty of CIS ",
//                       readOnly: true,
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     TextFormField(
//                       decoration: InputDecoration(
//                         prefixIcon: const Icon(
//                           Icons.home,
//                           color: Color.fromRGBO(224, 0, 8, 1),
//                         ),
//                         border: OutlineInputBorder(
//                           borderSide: const BorderSide(
//                             color: Color.fromRGBO(224, 0, 8, 1),
//                             style: BorderStyle.solid,
//                           ),
//                           borderRadius: BorderRadius.circular(35),
//                         ),
//                       ),
//                       initialValue: logData.logis!.data!.email.toString(),
//                       readOnly: true,
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     TextFormField(
//                       decoration: InputDecoration(
//                         prefixIcon: const Icon(
//                           Icons.timer_rounded,
//                           color: Color.fromRGBO(224, 0, 8, 1),
//                         ),
//                         border: OutlineInputBorder(
//                           borderSide: const BorderSide(
//                             color: Color.fromRGBO(224, 0, 8, 1),
//                             style: BorderStyle.solid,
//                           ),
//                           borderRadius: BorderRadius.circular(35),
//                         ),
//                       ),
//                       initialValue: "Joined March 2015",
//                       readOnly: true,
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     TextFormField(
//                       decoration: InputDecoration(
//                         prefixIcon: const Icon(
//                           Icons.timer_rounded,
//                           color: Color.fromRGBO(224, 0, 8, 1),
//                         ),
//                         border: OutlineInputBorder(
//                           borderSide: const BorderSide(
//                             color: Color.fromRGBO(224, 0, 8, 1),
//                             style: BorderStyle.solid,
//                           ),
//                           borderRadius: BorderRadius.circular(35),
//                         ),
//                       ),
//                       initialValue: logData.logis!.data!.phone.toString(),
//                       readOnly: true,
//                     ),
//
//                   ],
//                 ),
//               ),
//             ],
//           );
//         }),],
//     );
//   }
// }
