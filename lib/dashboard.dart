import "package:flutter/material.dart";
import "package:tumpuan/widgets/logdashboard.dart";
import "package:tumpuan/widgets/navbar.dart";
import "package:tumpuan/palette/palette.dart";
import "package:fl_chart/fl_chart.dart";
import "package:tumpuan/widgets/regularbtn.dart";

import 'dart:math';
class Dashboard extends StatelessWidget{
  Dashboard({Key? key}) : super(key: key);

  final List<FlSpot> dummyData1 = List.generate(8, (index) {
    double randomValue;
    do {
      randomValue = Random().nextDouble();
    } while (randomValue == 0);
    return FlSpot(index.toDouble(), index * randomValue);
  });

  // // This will be used to draw the orange line
  // final List<FlSpot> dummyData2 = List.generate(8, (index) {
  //   double randomValue;
  //   do {
  //     randomValue = Random().nextDouble();
  //   } while (randomValue == 0); // Ensure the random value is not zero
  //   return FlSpot(index.toDouble(), index * randomValue);
  // });

  // // This will be used to draw the blue line
  // final List<FlSpot> dummyData3 = List.generate(8, (index) {
  //   double randomValue;
  //   do {
  //     randomValue = Random().nextDouble();
  //   } while (randomValue == 0); // Ensure the random value is not zero
  //   return FlSpot(index.toDouble(), index * randomValue);
  // });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: NavBar()
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                            SearchBar(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    shape: BoxShape.rectangle,
                                    color: Pallete.pink0,
                                  ),
                                  child: const SizedBox(
                                    width: 235,
                                    height: 235,
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:[
                                          Text(
                                            '9000',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 50,
                                              color: Pallete.pink4,
                                            ),
                                          ),
                                          Text(
                                            'Jumlah User',
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 10,
                                              color: Pallete.pink4,
                                            ),
                                          )
                                        ]
                                      )
                                    ),
                                  ),
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    shape: BoxShape.rectangle,
                                    color: Pallete.pink0,
                                  ),
                                  child: const SizedBox(
                                    width: 235,
                                    height: 235,
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:[
                                          Text(
                                            '9000',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 50,
                                              color: Pallete.pink4,
                                            ),
                                          ),
                                          Text(
                                            'Jumlah Suara Puan',
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 10,
                                              color: Pallete.pink4,
                                            ),
                                          )
                                        ]
                                      )
                                    ),
                                  ),
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    shape: BoxShape.rectangle,
                                    color: Pallete.pink0,
                                  ),
                                  child: const SizedBox(
                                    width: 235,
                                    height: 235,
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:[
                                          Text(
                                            '9000',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 50,
                                              color: Pallete.pink4,
                                            ),
                                          ),
                                          Text(
                                            'Jumlah Daily Quiz',
                                            style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 10,
                                              color: Pallete.pink4,
                                            ),
                                          )
                                        ]
                                      )
                                    ),
                                  ),
                                )
                              ],
                            )
                            ],
                          )
                        ),
                        Row(
                          children: [
                            // LineChart(
                            //    LineChartData(
                            //     borderData: FlBorderData(show: false),
                            //     lineBarsData: [
                                  // The red line
                                  // LineChartBarData(
                                  //   spots: dummyData1,
                                  //   isCurved: false,
                                  //   barWidth: 3,
                                  //   color: Colors.indigo,
                                  // ),
                                  // // The orange line
                                  // LineChartBarData(
                                  //   spots: dummyData2,
                                  //   isCurved: false,
                                  //   barWidth: 3,
                                  //   color: Colors.red,
                                  // ),
                                  // // The blue line
                                  // LineChartBarData(
                                  //   spots: dummyData3,
                                  //   isCurved: false,
                                  //   barWidth: 3,
                                  //   color: Colors.blue,
                                  // )
                                // ]
                              // )
                            // )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            children:[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Log',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Pallete.pink4,
                                    ),
                                  ),
                                  RegularButton(onPressed: (){}, buttonLabel: '',)
                                ],
                              ),
                              SizedBox(height: 15,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 150,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Pallete.pink0,
                                      borderRadius: BorderRadiusDirectional.circular(15),
                                    ),
                                    child: Text(
                                      'Today',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 7,),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Pallete.pink1),
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Text(
                                              '00:00',
                                              style: TextStyle(
                                                color: Pallete.pink4,
                                                fontSize: 20
                                              ),
                                            ),  
                                          )
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      Container(
                                        child: Center(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  border: Border.all(color: Pallete.pink3),
                                                  borderRadius: BorderRadius.circular(20)
                                                ),
                                                child: Center(
                                                  child: Padding(
                                                    padding: EdgeInsets.all(2),
                                                    child: Text(
                                                      'Admin Untuk Puan',
                                                      style: TextStyle(
                                                        color: Pallete.pink4,
                                                        fontSize: 10,
                                                        ),
                                                      ),
                                                    )
                                                ),
                                              ),
                                              SizedBox(height: 3),
                                              Container(
                                                decoration: BoxDecoration(
                                                  border: Border.all(color: Pallete.pink1),
                                                  borderRadius: BorderRadius.circular(20)
                                                ),
                                                child: Center(
                                                  child: Padding(
                                                    padding: EdgeInsets.all(5),
                                                    child: Flexible(
                                                      child: Text(
                                                        overflow: TextOverflow.ellipsis,
                                                        'Update Data on Suara Puaaaaaaaaaaaaaaaan',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                    )
                                                  )
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ]
                          ),
                        )

                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}