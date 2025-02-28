import 'package:bank_app/login_screen.dart';
import 'package:bank_app/registerScreen.dart';
import 'package:flutter/material.dart';

class welcomeScreen extends StatelessWidget{
  const welcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white70,
        ),
        child: Column(
          children: [
             Padding(
               padding: const EdgeInsets.only(top: 100.0),
               child: Image(image: AssetImage('assets/images/logo.png'),width: 150,height: 150,),
             ),
            SizedBox(
              height: 50,
            ),
            Text("Welcome Back",style:
            TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text("Let's Get Started!",style: TextStyle(
                color: Colors.redAccent,
                fontSize: 15),),
            SizedBox(
                height: 50 ,
              ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> loginScreen()));
                  },
                  child: Container(
                    height: 50,
                    width: 210,
                    decoration: BoxDecoration(
                      color: Color(0xFF7BC0FF),
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Color(0xFF7BC0FF)),
                    ),
                    child:
                    Center(child: Text("Login",style:
                      TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ), )),
                  ),
                ),
            SizedBox(
              height: 20 ,
            ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => regScreen()));
                  },
                  child: Container(
                    height: 50,
                    width: 210,
                    decoration: BoxDecoration(
                      color: Color(0xFF7BC0FF),
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Color(0xFF7BC0FF))
                    ),
                    child:
                    Center(child: Text("Register",style:
                    TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ), )),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}