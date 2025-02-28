import 'package:bank_app/pages/Stats.dart';
import 'package:bank_app/pages/my_card.dart';
import 'package:bank_app/pages/my_profile.dart';
import 'package:flutter/material.dart';
class MyList {
  String title;
  String subtitle;
  String money;
  bool isgood;

  MyList({required this.title,required this.subtitle,required this.money,required this.isgood});
}

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<homeScreen> {
  String username = "Awais Malik";
  String welcome = "Welcome Back!";
  String value = "238,453";
  final controller = ScrollController();

  bool isgoodornot = false;


  List accounts= [
    MyList(title: "Ali Khan", subtitle: "2022-08-21 02:14:12", money: "\Rs 250", isgood: false),
    MyList(title: "Bushra Bibi", subtitle:"2022-07-12 05:07:12", money: "\Rs 100", isgood: false),
    MyList(title: "Asad Bhatti", subtitle: "2022-05-20 07:12:12", money: "\Rs 100", isgood: true),
    MyList(title: "Imran Cheema",subtitle: "2022-05-14 03:33:22", money: "\Rs 300", isgood: true),
    MyList(title: "Bilal Ahmad", subtitle: "2022-05-04 01:32:14", money: "\Rs 700", isgood: false)
  ];

  int _pageindex = 0;

  final List<Widget> pages =[
    const homeScreen(),  // This creates an infinite loop
    const Stats(),
    const MyCard(),
    const Profile(),
  ];
  void onPageChanged(int index) {
    setState(() {
      _pageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: IndexedStack(
        index: _pageindex,
        children: [
          // Main home content
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Container(
                        width: 50,
                        height: 50,
                        child: CircleAvatar(backgroundImage:
                        AssetImage('assets/images/man.png',),
                        backgroundColor: Color(0xFF7BC0FF),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text(
                              "Hello Awais Malik",
                              style: const TextStyle(
                                  color: Colors.black,
                                fontSize: 15,fontWeight: FontWeight.bold,
                              fontFamily: 'Font2'),
                            ),
                            Text(
                              "Welcome Back!!",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 13),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: IconButton(
                          onPressed: () {},
                          icon: Stack(
                            children: const [
                              Icon(
                                Icons.notifications_none_outlined,
                                size: 30,
                                color: Colors.yellow,
                              ),
                            ],
                          )
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        colors:  [Color(0xFF00499B) ,
                        Color(0xFF7BC0FF),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight
                    )
                  ),
                 child: Padding(
                   padding: const EdgeInsets.all(18.0),
                   child: Row(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text("Card Name",style: TextStyle(
                                 fontSize: 12,
                                 color: Colors.white,
                                 fontWeight: FontWeight.w600,
                                 fontFamily: 'Font2',
                               ),
                               ),
                               SizedBox(
                                 height: 2,
                               ),
                               Text("Awais Zafar",style: TextStyle(
                                 fontSize: 15,
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                                 fontFamily: 'Font2',
                               ),
                               ),
                               SizedBox(
                                 height: 10,
                               ),
                               Text("**** **** **** 3728",style: TextStyle(
                                 fontSize: 20,
                                 color: Colors.white,
                                 fontFamily: 'Font2',
                               ),
                               ),
                               SizedBox(
                                 height: 2,
                               ),
                             ],
                           ),
                           Row(
                             children: [
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Exp Date",style: TextStyle(
                                   color: Colors.white,
                                   fontFamily: 'Font2',
                                   ),
                                   ),
                                   SizedBox(
                                     height: 1,
                                   ),
                                   Text("02/29",style: TextStyle(
                                     color: Colors.white,
                                     fontFamily: 'Font2',
                                   ),
                                   ),
                                 ],
                               ),
                               SizedBox(
                                 width: 30,
                               ),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text("Balance",style: TextStyle(
                                     color: Colors.white,
                                     fontFamily: 'Font2',
                                   ),),
                                   SizedBox(
                                     height: 1,
                                   ),
                                   Text("Rs 923,234",style: TextStyle(
                                     color: Colors.white,
                                     fontFamily: 'Font2',
                                   ),),
                                 ],
                               )
                             ],
                           )
                         ],
                       ),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Image(image: AssetImage('assets/images/MC.png'),
                             width: 40,height: 50,),
                         ],
                       )
                     ],
                   ),
                 ),


                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _tiles(Icons.send ,Color(0xFF00499B), Color(0xFF7BC0FF), "Send"),
                    _tiles(Icons.money,Color(0xFF00499B), Color(0xFF7BC0FF), "Withdraw"),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Recent transactions",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Font2',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: TextButton(
                          style: ButtonStyle(
                            overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "See all",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Font2',
                              fontSize: 15,
                            ),
                          )),
                    ),
                  ],
                ),
                Expanded(
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ScrollConfiguration(
                      behavior: const MaterialScrollBehavior()
                          .copyWith(overscroll: false),
                      child: ListView.builder(
                          controller: controller,
                          shrinkWrap: true,
                          itemCount: accounts.length,
                          itemBuilder: (context, index) {
                            bool isornot = accounts[index].isgood;

                            return ListTile(
                              title: Text(
                                accounts[index].title,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Font2',
                                    fontSize: 13),
                              ),
                              subtitle: Text(accounts[index].subtitle,
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 12)),
                              trailing:
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(accounts[index].money,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  const SizedBox(width: 10,),
                                  isornot  == false
                                      ? const Icon(Icons.arrow_downward_outlined,color: Colors.red,)
                                      : const Icon(Icons.arrow_upward_outlined,color: Colors.green,),
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Other pages
          const Stats(),
          const MyCard(),
          const Profile(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(
          size: 18,
          color: Color(0xFF00E5FF),
        ),
        iconSize: 19,
        unselectedItemColor: Colors.black87,
        unselectedFontSize: 12,
        selectedFontSize: 15,
        currentIndex: _pageindex,
        onTap: onPageChanged,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: "Statistics",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "Card",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
Container _tiles(IconData icon,Color color1,color2, String title) {
  return Container(
    height: 85,
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(colors: [
        color1,
        color2,
      ],
          begin: Alignment.topCenter,
          end: Alignment.bottomRight)

      ),

    child: ListTile(
      title: Icon(icon, size: 40, color: Colors.white,),
      subtitle: Padding(
        padding: const EdgeInsets.only(top:8),
        child: Text(title,textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),),
      ),
    ),
  );
}


