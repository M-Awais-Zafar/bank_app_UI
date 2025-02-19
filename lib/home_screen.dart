

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

  void onPageChanged(int _index) {
    setState(() {
      _pageindex = _index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SizedBox(
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
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hello Awais Malik",
                          style: const TextStyle(
                              color: Colors.black, fontSize: 22,fontWeight: FontWeight.bold,),
                        ),
                        Text(
                          "Welcome Back!!",
                          style: const TextStyle(
                              color: Colors.black,

                              fontSize: 25),
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
                            size: 24,
                            color: Colors.yellow,
                          ),
                        ],
                      )
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.redAccent,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          "Current balance",
                          style: TextStyle(color: Colors.white, fontSize: 22
                          ,fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\Rs $value",
                        style:
                        const TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ],
                  ),
                   Padding(
                     padding: const EdgeInsets.only(right: 18.0),
                     child: IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(
                        Icons.add,
                        size: 37,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                                       ),
                   ),
                  // ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _tiles(Icons.send , "Send"),
                _tiles(Icons.money , "Withdraw"),
              ],
            ),
            const SizedBox(
              height: 20,
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
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: TextButton(
                      style: ButtonStyle(
                        overlayColor:
                        MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "See all",
                        style: TextStyle(
                          color: Colors.black,
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
                                fontSize: 16),
                          ),
                          subtitle: Text(accounts[index].subtitle,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 13)),
                          trailing:
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(accounts[index].money,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
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
      bottomNavigationBar: SingleChildScrollView(
        child: Container(
          height: 55,
          color: Colors.transparent,
          child: Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              canvasColor: Colors.transparent,
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: false,
              elevation: 0.0,
              selectedIconTheme: const IconThemeData(
                size: 19,
                color: Color(0xFFDC1B1B),
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
                  icon: Icon(Icons.replay_5_outlined),
                  label: "Schedule",
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

          ),
        ),
      ),
    );
  }
}


Container _tiles(IconData icon, String title) {
  return Container(
    height: 85,
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
       color: Colors.redAccent,
      ),

    child: ListTile(
      title: Icon(icon, size: 45, color: Colors.white,),
      subtitle: Padding(
        padding: const EdgeInsets.only(top:8),
        child: Text(title,textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),),
      ),
    ),
  );
}