import 'package:flutter/material.dart';
import 'package:micro/BottomNAV.dart';
import 'package:micro/SignUp.dart';
import 'package:micro/providertest.dart';
import 'package:provider/provider.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var emailController=TextEditingController();
  var passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromRGBO(224, 0, 8, 1),
        toolbarHeight: 25,
        centerTitle: true,
      ),
/*************************************************************************************************************************************/
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
                      "Welcome back!",
                      style: TextStyle(
                        color: Color.fromRGBO(224, 0, 8, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Login to Start Shopping",
                      style: TextStyle(

                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromRGBO(224, 0, 8, .4),
                      ),
                    ),],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: emailController,
                validator: (val) {
                  if (val!.isEmpty || !val.contains("@")) {
                    return "Invalid E-mail Address";
                  }
                  return null;
                },
                //Please enter A correct E-mail like the hint
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(30),
                  labelText: "E-mail",
                  prefixIcon: const Icon(
                    Icons.mail_rounded,
                    color:Color.fromRGBO(224, 0, 8, 1),
                  ),
                  hintText: "example@gmail.com",
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: passwordController,
                validator: (String? val) {
                  if (val!.isEmpty || val.length < 8) {
                    return "Incorrect Password";
                  }
                  return null;
                },
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(30),
                  labelText: "Password",
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color.fromRGBO(224, 0, 8, 1),
                  ),
                  hintText: "Enter Your Password",
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Consumer<LoginProvider>(builder: (context,LOG,child){
                return Center(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      // // textStyle,
                      //  backgroundColor,
                      //  foregroundColor,
                      //  overlayColor,
                      //  shadowColor,
                      //  surfaceTintColor,
                      //  elevation,
                      //  padding,
                      //  minimumSize,
                      //  fixedSize,
                      //  maximumSize,
                      //  side,
                      //  shape,
                      //  mouseCursor,
                      //  visualDensity,
                      //  tapTargetSize,
                      //  animationDuration,
                      //  enableFeedback,
                      //  alignment,
                      //  splashFactory,
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),

                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        LOG.lOgIn(
                          email: emailController.text,
                          password: passwordController.text,
                        ).then((value){
                          if(LOG.login!.status==false){
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(LOG.login!.message.toString(),),
                              duration: Duration(seconds: 3,),
                              backgroundColor: Colors.red,
                            ));
                          }
                          else{
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(LOG.login!.message.toString(),),
                              duration: Duration(seconds: 3,),
                              backgroundColor: Colors.red,
                            ));
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute<void>(
                                    builder: (context) => const Navigatorr()));
                          }
                        });

                      }
                    },
                  ),
                );
              }),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("Don't Have an account ??"),
                  InkWell(
                    child: const Text(
                      "  Sign Up",
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                              builder: (context) => const SignUp()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
