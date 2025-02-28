import 'package:bank_app/login_screen.dart';
import 'package:flutter/material.dart';

class regScreen extends StatelessWidget{
  const regScreen({Key? key}): super(key: key);
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
                      Text("Create New Account!",style: TextStyle(
                        fontSize: 20,
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
              height: 600,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.check),
                          label: Text('Full Name', style: TextStyle(fontWeight: FontWeight.bold,
                              color: Colors.redAccent),)
                      ),
                    ),
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
                    TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.visibility_off),
                          label: Text('Confirm Password', style: TextStyle(fontWeight: FontWeight.bold,
                              color: Colors.redAccent),)
                      ),
                    ),
                    SizedBox(height: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> loginScreen()));
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.white)
                        ),
                        child: Center(child: Text("Register",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),)),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Align(
                      alignment: Alignment.bottomRight,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("Already Have account?"),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> loginScreen()));
                            },
                            child: Text("Login",style: TextStyle(
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
      ),
    );
  }
}