import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget{
  const Profile({super.key});
  @override
  _ProfileState createState()=>_ProfileState();
}
class _ProfileState extends State<Profile>{
  hexColor(String mycolor) {
    String newcolor = "0xff$mycolor";
    newcolor = newcolor.replaceAll("#", "");
    int colorint = int.parse(newcolor);
    return colorint;
}
@override
  Widget build(BuildContext contex) {

   return Scaffold(
     backgroundColor: Colors.white,
     body: SingleChildScrollView(
       scrollDirection: Axis.vertical,
       child: Column(
         children: [
           Container(
             decoration: const BoxDecoration(
               borderRadius: BorderRadius.only(
                 bottomRight: Radius.circular(10),
                 bottomLeft: Radius.circular(10),
               ),
               gradient:  LinearGradient(
                 begin: Alignment.topRight,
                 end: Alignment.bottomRight,
                 colors:  [Color(0xFF00499B) ,
                   Color(0xFF7BC0FF),
                 ],
               ),
             ),
             height: 250,
             width: 400,
             child: InkWell(
               onTap: (){},
               child: Column(
                 children: [
                   const SizedBox(
                     height: 20,
                   ),
                   Text("My Profile",style: TextStyle(
                     fontFamily: "Font2",
                     fontSize: 15,
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                   ),),
                   SizedBox(
                     height: 5,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left:  140.0),
                     child: Row(

                       children: [
                         const SizedBox(height: 100,),
                         const CircleAvatar(
                           radius: 40,
                           backgroundImage: AssetImage("assets/images/man.png"),
                         ),
                         const SizedBox(width: 80,),
                         IconButton(onPressed: (){},
                             icon: Icon(Icons.notifications_outlined,
                             size: 30,
                             color: Colors.yellow,)
                         )
                       ],
                     ),
                   ),
                   const SizedBox(height: 1,),
                   Text("Awais Zafar",style: TextStyle(
                     fontFamily: "Font2",
                     fontSize: 20,
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   ),),
                   const SizedBox(height: 1,),
                   TextButton(onPressed: (){
                     showDialog(context: context,
                         builder: (BuildContext contex){
                       return CupertinoAlertDialog(
                         content: Column(
                           children: <Widget>[
                             Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Text(
                                   "DOB",
                                   style: TextStyle(
                                     color: Colors.black,
                                     fontSize: 13,
                                     fontFamily: 'Font2',
                                     letterSpacing: 0.0,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 ),
                                 const SizedBox(width:  115,),
                                 Text("01-01-2000",style: TextStyle(
                                   fontFamily: 'Font2',
                                   fontWeight: FontWeight.bold,
                                 ),),
                               ],
                             ),
                             Divider(
                               height: 30,
                               color: Colors.white,
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Text("Phone",style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 13,
                                   fontWeight: FontWeight.bold,
                                   fontFamily: 'Font2',
                                 ),),
                                 const SizedBox(width: 80,),
                                 Text("+9234 2324231", style: TextStyle(
                                   fontWeight: FontWeight.bold,
                                 ),)
                               ],
                             )
                           ],
                         ),
                       );
                         });
                   },
                   child:Text("Show Details",style: TextStyle(
                     fontWeight: FontWeight.bold,
                     color: Colors.white,
                   ),) ,
                       )
                 ],
               ),
             ),
           ),
           const SizedBox(height: 20,),
           Row(
             children: [
             const SizedBox(width: 10,),
               Text("Privacy and Security",style: TextStyle(
                 color: Colors.black,
                 fontSize: 15,
                 fontFamily: 'Font2',
               ),)
           ],
           ),
           const SizedBox(height: 5,),
           Container(
             height: 70,
             width: 400,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(2),

             ),
               child:InkWell(
                 onTap: (){},
                 child: Row(
                   children: <Widget>[
                     const SizedBox(
                       width: 20,
                     ),
                     Icon(Icons.add),
                     const SizedBox(width: 10,),
                     Text("Change/Reset Pin",style: TextStyle(
                       fontSize: 15,
                       fontFamily: 'Font2'
                     ),),
                     const SizedBox(width: 100,),
                     CircleAvatar(
                       backgroundColor: Colors.white,
                       radius: 10,
                       child: IconButton(
                           onPressed: (){
                             Navigator.pushNamed(context, '/');
                           },
                           icon: Icon(Icons.arrow_forward_ios,
                           size: 15,
                           color: Colors.black,)
                       ),
                     ),
                   ],
                 ),
               ),
           ),
               Container(
                 height: 70,
                 width: 400,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(2),
                 ),
                 child: InkWell(
                   onTap: (){},
                   child: Row(
                     children: <Widget>[
                       const SizedBox(width: 20,),
                       const Icon(Icons.lock),
                       const SizedBox(width: 10,),
                       Text("Change Password",style: TextStyle(
                           fontSize: 15,
                           fontFamily: 'Font2'
                        ),
                       ),
                       const SizedBox(width: 100,),
                       CircleAvatar(
                         backgroundColor: Colors.white,
                         radius: 10,
                         child: IconButton(
                             onPressed: (){
                               Navigator.pushNamed(context, '/');
                             },
                             icon: Icon(Icons.arrow_forward_ios,
                               size: 15,
                               color: Colors.black,)
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
           const SizedBox(height: 5,),
           Row(
             children: [
               const SizedBox(
                 width: 13,
               ),
               Text(
                 "Limits",
                 style: TextStyle(
                   color: Colors.black,
                   fontFamily: "Font2",
                   fontSize: 15,
                 ),
               ),
             ],
           ),
           const SizedBox(height: 5,),
           Container(
             height: 70,
             width: 400,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(2),
               // ignore: prefer_const_constructors

             ),
             child: InkWell(
               onTap: () {},
               child: Row(
                 children: <Widget>[
                   const SizedBox(width: 20,),
                   const Icon(
                     Icons.dashboard_customize,
                   ),
                   const SizedBox(width: 10,),
                   Text(
                     "Transaction Limits",
                     style: TextStyle(
                         fontSize: 15,
                         fontFamily: 'Font2'
                     ),
                   ),
                   const SizedBox(
                     width: 100,
                   ),
                   CircleAvatar(
                     backgroundColor: Colors.white12,
                     radius: 13,
                     child: IconButton(
                       onPressed: () {
                         Navigator.pushNamed(context, "/");
                       },
                       icon: const Icon(
                         Icons.arrow_forward_ios,
                         size: 15,
                         color: Colors.black,
                       ),
                     ),
                   ),
                 ],
               ),
             ),
           ),
           const SizedBox(height: 15,),
           Container(
             height: 70,
             width: 400,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
             ),
             child: InkWell(
               onTap: (){},
               child: Row(
                 children: <Widget>[
                   const SizedBox(width: 10,),
                   IconButton(
                       onPressed:(){
                         Navigator.pushNamed(context, "/");
                       } ,
                       icon: Icon(Icons.logout_outlined,
                       color: Colors.black,)),
                   const SizedBox(width: 2,),
                   Text("Logout", style: TextStyle(
                       fontSize: 15,
                       fontFamily: 'Font2'
                   ),)
                 ],
               ),
             ),
           )
         ],
       ),
     ),
   );
}
}