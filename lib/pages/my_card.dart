import 'package:flutter/material.dart';


class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Cards",
          style: TextStyle(
            fontFamily: "Font2",
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/boy.png"),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined,
              size: 30,
              color: Colors.yellow,
            ),
          )
        ],
      ),
      body: Scrollbar(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              buildCard(
                cardHolder: "Awais Zafar",
                cardNumber: "**** **** **** 3728",
                expDate: "02/29",
                balance: "Rs 923,234",
                cardImage: "assets/images/MC.png",
                cardColor: const Color(0xff00444f),
              ),
              const SizedBox(height: 15), // Space between cards
              buildCard(
                cardHolder: "M Awais Zafar",
                cardNumber: "**** **** **** 9876",
                expDate: "12/26",
                balance: "Rs 500,000",
                cardImage: "assets/images/MC.png",
                cardColor: Color(0xffff7b67), // Different color for another card
              ),
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 40,
                child: Icon(Icons.add, size: 40),
              ),
              SizedBox(height: 10),
              Text(
                "Add Card",style: TextStyle(
                fontFamily: 'Font2',
              ),
              )
            ],
          ),
        ),

      ),

    );
  }

  Widget buildCard({
    required String cardHolder,
    required String cardNumber,
    required String expDate,
    required String balance,
    required String cardImage,
    required Color cardColor,
  }) {
    return Container(
      height: 180,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: cardColor,
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
                    const Text(
                      "Card Name",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Font2',
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      cardHolder,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Font2',
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      cardNumber,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Font2',
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Exp Date",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Font2',
                          ),
                        ),
                        const SizedBox(height: 1),
                        Text(
                          expDate,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Font2',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Balance",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Font2',
                          ),
                        ),
                        const SizedBox(height: 1),
                        Text(
                          balance,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Font2',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  cardImage,
                  width: 40,
                  height: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
