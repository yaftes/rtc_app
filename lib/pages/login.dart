import 'package:flutter/material.dart';
import 'package:rtc_app/components/co_button.dart';
import 'package:rtc_app/components/co_textfield.dart';

class Login extends StatelessWidget {
 
   Login({super.key});
  final usrnameCo = TextEditingController();
  final passCo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body:SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Center(
              child: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    size:100,
                    color: Colors.black,
               ),
               SizedBox(height: 50,),
               Text("Welcome to our RTC App",
               style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400
               ),),
              SizedBox(height: 25,),
              CoTextfield(controller: usrnameCo, hintText: 'Username', obscureText: false),
              SizedBox(height: 25.0,),
              CoTextfield(controller: passCo, hintText: 'Password', obscureText: true),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forgot Password?",)
                ],
              ),
              SizedBox(height: 25,),
              
              CoButton(text: "Login", onTap: (){}),
        
              const  SizedBox(height: 25,),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account ?"),

                  GestureDetector(
                    onTap: (){},
                    child: Text("Register here",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  )
                ],
              )
            
               
            
                ],
              ),
            ),
          ),
        ),
      ),
    ) ;
  }
}