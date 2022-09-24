import 'package:flutter/material.dart';
import 'package:micro/SignIn.dart';
import 'package:micro/providertest.dart';
import 'package:provider/provider.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  var nameController=TextEditingController();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var phoneController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(224, 0, 8, 1),
        toolbarHeight: 25,
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Image.network(
                      'https://pic.onlinewebfonts.com/svg/img_287768.png',
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Hey There!",
                      style: TextStyle(
                        color: Color.fromRGBO(224, 0, 8, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "SignUp To Start Shopping",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromRGBO(224, 0, 8, .4)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: nameController,
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Please enter a correct Name";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(30),
                  labelText: "Name",
                  prefixIcon: const Icon(Icons.person),
                  hintText: "Enter Your Name",
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: emailController,
                validator: (val) {
                  if (val!.isEmpty || !val.contains("@") ) {
                    return "Invalid E-mail Address";
                  }
                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(30),
                  labelText: "E-mail",
                  prefixIcon: const Icon(Icons.mail_rounded),
                  hintText: "Enter Your E-mail",
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: passwordController,
                validator: (val) {
                  if (val!.isEmpty || val.length < 8) {
                    return "Incorrect Password";
                  }
                  return null;
                },
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(30),
                  labelText: "Password",
                  prefixIcon: const Icon(Icons.lock),
                  hintText: "Enter Your Password",
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: phoneController,
                validator: (val) {
                  if (val!.isEmpty || val.length < 14 || val.length > 14) {
                    return "Incorrect Phone Number";
                  }
                  return null;
                },
                keyboardType: TextInputType.phone,

                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(30),
                  labelText: "Phone",
                  prefixIcon: const Icon(Icons.phone_iphone_outlined),
                  hintText: "Enter Your Phone Number",
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Consumer<RegisterProvider>(builder: (context,Regz,child){
                return Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                    ),
                    child: const Text(
                      "SignUp",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Regz.rEgister(
                          name: nameController.text,
                          email: emailController.text,
                          password: passwordController.text,
                          phone: phoneController.text,
                        ).then((value){
                          if(Regz.register!.status==false)
                          {
                            Center(child: CircularProgressIndicator(color: Colors.red,),);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(Regz.register!.message.toString(),),
                              duration: Duration(seconds: 3,),
                              backgroundColor: Colors.red,
                            ));
                          }
                          else{
                            Center(child: CircularProgressIndicator(color: Colors.red,),);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(Regz.register!.message.toString(),),
                              duration: Duration(seconds: 3,),
                              backgroundColor: Colors.red,
                            ));
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute<void>(
                                    builder: (context) => const SignIn()));
                          }
                        });



                      }
                    },
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
