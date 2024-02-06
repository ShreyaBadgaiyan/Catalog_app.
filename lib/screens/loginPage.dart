import 'package:demoapp/utils/routes.dart';
import 'package:flutter/material.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // String name
  String name="";
  bool changeButton=false;

  final _formKey=GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context,
          MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        title: const Center(
          child: Text('CATALOG APP',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            )
          ),
        ),
        backgroundColor: Colors.pink,
      ),
      body:SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children:[
              Image.asset(
                "assets/Images/login.png",
          fit: BoxFit.cover,
                height: 200,
              ),
          
              const SizedBox(
                height:20.0,
              ),
          
          
              Text("Welcome $name",
                style:
                const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height:20.0,
              ),
          
          
          
          
              Padding(
                  padding:const EdgeInsets.symmetric(
              vertical:16.0,horizontal: 32.0
              ),
              child: Column(
                children:[
                  TextFormField(
                    style: const TextStyle(
                      decoration: TextDecoration.none,
                      decorationThickness: 0,
                    ),
          
                    decoration:const InputDecoration(
                      focusedBorder: InputBorder.none,
                      hintText: "Enter Username",
                      labelText:"Username",
          
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Username cannot be empty";
                      }

                      return null;
                    },
                    onChanged:(value){
                      name=value;
                      setState(() {
          
                      });
                    },
          
                  ),
          
                  const SizedBox(
                    height:20.0,
                  ),
          
                  TextFormField(
                    obscureText: true,
                      decoration:const InputDecoration(
          
                        hintText: "Enter Password",
                        labelText:"Password",
                      ),

    validator: (value) {
      if (value!.isEmpty) {
        return "Password cannot be empty";
      }

      else if(value.length<6){
        return "Password should be atleast 6 characters long";
      }

      return null;
    },),
          
                  const SizedBox(
                    height:20.0,
                  ),
          
                  // ElevatedButton(
                  //   child:Text("Login"),
                  //   style:TextButton.styleFrom(minimumSize:Size(150,40)),
                  //   onPressed: (){
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  // )
          
          
                  Material(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(changeButton?50:8),
                    child: InkWell(
          
                      onTap: () =>moveToHome(context),
                      child:
                      AnimatedContainer(
                       duration: const Duration(seconds:1),
                        width:changeButton?50:150,
                        height:50,
          
                        alignment: Alignment.center,
                        child: changeButton?const Icon(
                            Icons.done,
          
                        color: Colors.white,
                        ):
                        const Text("Login",
                        style:
                          TextStyle(
                            color:Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
          
                          // shape: changeButton?
          
                          // BoxShape.circle
                          //     :BoxShape.rectangle,
          
          
                      ),
                    ),
                  )
          
          
                ]
              ),
              ),
            ],
          
          ),
        ),
      ),
    );
  }
}
