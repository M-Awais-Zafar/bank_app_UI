import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Stats extends StatefulWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  _StatsState createState() => _StatsState();
}

// Widget getTitle(double value, TitleMeta meta) {
//   return Text(value.toString(), style: TextStyle(color: Colors.white, fontSize: 12));
// }


class MyList {
  String title;
  String subtitle;
  String money;
  bool isgood;

  MyList({required this.title,required this.subtitle,required this.money,required this.isgood});
}
class _StatsState extends State<Stats> {

  bool showAvg = false;
  bool isgoodornot = false;
  List accounts= [
    MyList(title: "Ali Khan", subtitle: "2022-08-21 02:14:12", money: "\Rs 250", isgood: false),
    MyList(title: "Bushra Bibi", subtitle:"2022-07-12 05:07:12", money: "\Rs 100", isgood: false),
    MyList(title: "Asad Bhatti", subtitle: "2022-05-20 07:12:12", money: "\Rs 100", isgood: true),
    MyList(title: "Imran Cheema",subtitle: "2022-05-14 03:33:22", money: "\Rs 300", isgood: true),
    MyList(title: "Bilal Ahmad", subtitle: "2022-05-04 01:32:14", money: "\Rs 700", isgood: false)
  ];
  @override
  Widget build(BuildContext context) {
    // final size = Layouts.getSize(context);
    var controller;
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Statistics",
          style: TextStyle(
            fontFamily: "Font2",
            fontSize: 15,
            color: Colors.black,
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

      body: ListView(
          padding: const EdgeInsets.all(15),
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff00444f),
                  border: Border.all(color: Color(0xff00444f))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: const EdgeInsets.fromLTRB(20, 15, 20, 5),
                      child: Text('Total Balance',
                          style:
                          TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Font2",
                          )
                      )
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                  Container(
                      padding: const EdgeInsets.fromLTRB(20, 25, 20, 30),
                      child: Text('Rs 923,234',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: "Font2",
                              fontWeight: FontWeight.bold))),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Color(0xff00444f),
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Colors.grey)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.center,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xff012c32),
                    ),
                    child: const Text("Income",style:
                      TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "Font2",
                        fontWeight: FontWeight.bold
                      ),),
                  ),
                  Container( padding: const EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.center,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.transparent,
                    ),
                    child: const Text("Expenses",style:
                    TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "Font2",
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20),
                ),
                border: Border.all(color: Colors.black)
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(22, 22, 22, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              child: const Icon(Icons.show_chart_rounded,
                              color: Colors.white,),
                            ),
                            const SizedBox(width: 6,),
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              child: const Icon(Icons.remove_red_eye_rounded,
                                color: Colors.white,),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.black,
                          ),
                          child: Row(
                            children: [
                              Text("This week", style: TextStyle(
                                color: Colors.white,
                              ),),
                              const SizedBox(width: 6,),
                              Icon(CupertinoIcons.chevron_down,
                              color: Colors.white,size: 15,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  AspectRatio(aspectRatio: 1.80,
                  child: LineChart(mainData()),),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Transactions",style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
                Row(
                  children: [
                    Text("View all",style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),),
                    const SizedBox(width: 3,),
                    Icon(Icons.arrow_forward,
                    color: Colors.black,),
                  ],
                ),
              ]
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
                              var isornot;
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
                            }
                        )
                    )
                )
            )
  ]
      ),
    );
  }
}
LineChartData mainData(){
  return LineChartData(
    gridData: FlGridData(
      show: false,
      drawVerticalLine: false,
      getDrawingHorizontalLine: (value){
        return FlLine(
          color: Colors.transparent,
         strokeWidth: 1
        );
      },
      getDrawingVerticalLine: (value){
        return FlLine(
          strokeWidth: 1
        );
      },
    ),
    titlesData: FlTitlesData(
      show: true,
      rightTitles: AxisTitles(sideTitles:SideTitles(showTitles: false)),
      topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
      bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true,
      reservedSize: 40,
      interval: 1.1,
        getTitlesWidget: (value,meta) {
          switch (value.toInt()) {
            case 1:
              return Text('S', style: TextStyle(color: Colors.black, fontSize: 17));
            case 2:
              return Text('M', style: TextStyle(color: Colors.black, fontSize: 17));
            case 3:
              return Text('T', style: TextStyle(color: Colors.black, fontSize: 17));
            case 4:
              return Text('W', style: TextStyle(color: Colors.black, fontSize: 17));
            case 5:
              return Text('T', style: TextStyle(color: Colors.black, fontSize: 17));
            case 6:
              return Text('F', style: TextStyle(color: Colors.black, fontSize: 17));
            case 7:
              return Text('S', style: TextStyle(color: Colors.black, fontSize: 17));
          }
          return Container();
        },
      ),
      ),
      leftTitles: AxisTitles(sideTitles: SideTitles(
        showTitles: false,
        interval: 1,
        getTitlesWidget: (value,meta){
          switch (value.toInt()){
            case 1:
              return Text("10k");
            case 3:
              return Text("30k");
            case 5:
              return Text("50k");
          }
          return Container();
        },
        reservedSize: 32,
      ),
      ),
      ),
    borderData: FlBorderData(
      show: false,
      border: Border.all(color: Colors.black,width: 1),
    ),
    minX: 0,
    maxX: 9,
    minY: 0,
    maxY: 6,
    lineBarsData: [
      LineChartBarData(
        spots: [
          FlSpot(0, 3),
          FlSpot(1.5, 3),
          FlSpot(3.5, 5),
          FlSpot(5, 3),
          FlSpot(6.5, 4),
          FlSpot(8, 2.8),
          FlSpot(9, 3),],
        isCurved: true,
        color: Colors.black,
        barWidth: 2.5,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false
        ),
        belowBarData: BarAreaData(
         show: true,
          color: Color(0xff00444f),
        )

      )
    ]
      );


}

