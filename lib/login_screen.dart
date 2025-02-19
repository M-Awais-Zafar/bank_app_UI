import 'package:bank_app/home_screen.dart';
import 'package:bank_app/registerScreen.dart';
import 'package:flutter/material.dart';


class loginScreen extends StatelessWidget{
  const loginScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white70,
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 28.0),
                  child: Column(
                    children: [
                      Image(image: AssetImage('assets/images/logo.png'),
                        width: 100,height: 100,),
                      Text("Login Here!",style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),)
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              height: 550,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white70,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40)
                )
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 30.0,right: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.check),
                        label: Text('Phone No', style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.redAccent),)
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.visibility_off),
                          label: Text('Password', style: TextStyle(fontWeight: FontWeight.bold,
                              color: Colors.redAccent),)
                      ),
                    ),
                    SizedBox(height: 20,),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text("Forgot Password?",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                      ),),
                    ),
                    SizedBox(height: 50,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> homeScreen()));
                        },
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.white)
                          ),
                          child: Center(child: Text("Login",style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),)),
                        ),
                      ),

                    SizedBox(height: 70,),
                    Align(
                      alignment: Alignment.bottomRight,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Don't Have account?"),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> regScreen()));
                            },
                            child: Text("Register",style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            
          )
        ],
      )
    );
  }
}