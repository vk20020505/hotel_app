import 'package:flutter/material.dart';
import 'package:hotel_app/view/hotelTabView.dart';
import 'hotDeals.dart';
// import './hotelCard.dart';
// import './hotelCard2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<dynamic, dynamic>> _content = [
    {'icon': Icons.local_hotel_outlined, 'label': 'Hotel'},
    {'icon': Icons.airplanemode_active_sharp, 'label': 'Flight'},
    {'icon': Icons.place_outlined, 'label': 'Place'},
    {'icon': Icons.fastfood_outlined, 'label': 'Food'}
  ];

  Widget _buildTab(var value) {
    return Container(
        height: 100,
        width: 80,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.grey.shade500),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                value['icon'],
                size: 35,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                value['label'],
                style: const TextStyle(fontSize: 15),
              )
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding:
                    const EdgeInsets.only(top: 30, bottom: 20, left: 10, right: 20),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 8),
                        width: 200,
                        child: const Text(
                          "Where you wanna go?",
                          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(color: Colors.grey, blurRadius: 10)
                            ],
                            color: Colors.grey.shade200,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            iconSize: 35,
                            icon: const Icon(Icons.search_rounded),
                            onPressed: () {},
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  DefaultTabController(
                    length: 4,
                    child: Column(
                      children: [
                        TabBar(
                            indicator: BoxDecoration(
                              color: Colors.blue.shade400,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            indicatorSize: TabBarIndicatorSize.label,
                            isScrollable: true,
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.grey.shade700,
                            // labelColor: ,
                            labelPadding: const EdgeInsets.only(left: 10, right: 10),
                            tabs: [
                              _buildTab(_content[0]),
                              _buildTab(_content[3]),
                              _buildTab(_content[2]),
                              _buildTab(_content[1]),
                            ]),
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          height: 360,
                          // color: Colors.red,
                          child: TabBarView(
                            children: [
                              const HotelTabView(),
                              Column(
                                children: [
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Popular Food",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "See All",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.orangeAccent),
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: 250,
                                    color: Colors.amber,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Popular Places",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "See All",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.orangeAccent),
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: 250,
                                    color: Colors.amber,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Flights",
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "See All",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.orangeAccent),
                                      )
                                    ],
                                  ),
                                  Container(
                                    height: 250,
                                    color: Colors.amber,
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: [],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Hot Deals",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                
                ],
              ),
                const SizedBox(
                    child: HotelOffer(),
                  )
            ],
          ),
        ),
      ),
    );
  }
}
