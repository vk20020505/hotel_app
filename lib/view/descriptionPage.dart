import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/view/HotelDetails.dart';

class DescriptionPage extends StatelessWidget {
  final Hotel hotel;
  DescriptionPage({super.key, required this.hotel});

  final List<Map<dynamic, dynamic>> _content2 = [
    {'icon': Icons.local_hotel_outlined, 'label': '2 Bed'},
    {'icon': Icons.dinner_dining_outlined, 'label': 'Dinner'},
    {'icon': Icons.ac_unit_outlined, 'label': '1 AC'},
    {'icon': Icons.hot_tub_outlined, 'label': 'Hot Tub'}
  ];

  Widget _buildTab2(var value) {
    return Container(
        width: 80,
        margin: const EdgeInsets.only(right: 15),
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 23,
                    child: IconButton(
                      iconSize: 25,
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onPressed: () => Navigator.pop(context),
                    )),
                Row(children: [
                  CircleAvatar(
                      radius: 23,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        iconSize: 25,
                        icon: const Icon(Icons.favorite_border_outlined,
                            color: Colors.black),
                        onPressed: () {},
                      )),
                  const SizedBox(width: 10),
                  CircleAvatar(
                      radius: 23,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        iconSize: 25,
                        icon: const Icon(Icons.share_outlined,
                            color: Colors.black),
                        onPressed: () {},
                      )),
                ]),
              ],
            ),
            pinned: true,
            backgroundColor: Colors.grey,
            expandedHeight: 450,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                // 'assets/images/pic1.jpg',
                hotel.imgUrl,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(200),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                height: 200,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 170,
                      child: Text(hotel.hotelName,
                          style: const TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold)),
                      // color: Colors.amber,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.place_outlined,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          hotel.location,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text(
                              hotel.rating,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                            const Text(
                              '(6.8k review)',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '\$${hotel.price}/',
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'night',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ExpandableText(
                style: TextStyle(fontSize: 17, color: Colors.grey.shade700),
                '''inkumarviarvinay kumarvinay kumarumarvinay kumarvinay kumarvinay kumarvinay kumarvinay kumarumarvinay ku
                kumarumarvinay kumarvinay kumarvinay kumarvinay kumarvinay kumarumarvi
                kumarumarvinay kumarvinay kumarvinay kumarvinay kumarvinay kumarumaumarvinay kumarvinay kumarvinay kumar''',
                maxLines: 3,
                expandText: "Read more",
                collapseText: "Read less",
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "What we offer",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Container(
                  height: 130,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  // color: Colors.amber,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildTab2(_content2[0]),
                      _buildTab2(_content2[1]),
                      _buildTab2(_content2[3]),
                      _buildTab2(_content2[2]),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Hosted by",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.amber),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Harlen Smith",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Text(
                                hotel.rating,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              const Text(
                                '(1.6k review)',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(color: Colors.orange, blurRadius: 10)
                          ],
                          color: Colors.orange),
                      child: IconButton(
                        iconSize: 35,
                        icon: const Icon(
                          Icons.chat_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      )),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue),
                  child: const Text(
                    "Book Now",
                    style: TextStyle(fontSize: 23, color: Colors.white),
                  )),
            ]),
          ))
        ],
      ),
    );
  }
}
