import 'package:flutter/material.dart';
import 'HotelDetails.dart';
import 'descriptionPage.dart';

class HotelTabView extends StatelessWidget {
  const HotelTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Popular Hotels",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
       const  SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 300,
          // color: Colors.amber,
          child: ListView.builder(
            itemCount: details.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, index) {
              Hotel hotel = details[index];
              return  InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>  DescriptionPage(hotel:hotel)));
    },
    child: Container(
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(hotel.imgUrl), fit: BoxFit.cover, scale: 2)),
      width: 200,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              hotel.hotelName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 4,
            ),
               Row(
                children: [
                  const Icon(
                    Icons.place_outlined,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    hotel.location,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
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
                    Text(
                      '\$${hotel.price}/',
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'night',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
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
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
              
            },
          ),
        ),
      ],
    );
  }
}
