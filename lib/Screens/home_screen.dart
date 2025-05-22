import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vehicle_repair_booking_app/utils/app_styles.dart';
import 'package:vehicle_repair_booking_app/widgets/station_card.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 60),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          
                        ),
                        child: Image.asset('assets/images/image3.png'),
                      ),
                      Gap(8),
                      Text('Hello, Olamidotun!',
                      style: Styles.subtitle.copyWith(
                        color: Color(0XFF2A2A2A),
                        fontSize: 16
                      ),)
                    ],
                  ),
                  Icon(Icons.notifications_active_outlined,
                  size: 32,
                  color: Color(0XFF2A2A2A),)
                ],
              ),
              Gap(31),
              Text('Available Stations',
              style: Styles.subtitle.copyWith(
                fontWeight: FontWeight.bold
              )),
              Gap(24),
              AvailableStation(
                stationName: 'John Mechanic Workshop',
                stationType: 'Mechanic Station',
                image: 'assets/images/image1.png'
                ),
              Gap(16),
              AvailableStation(
                stationName: 'Avia-Xpress fuel Station',
                stationType: 'Fuel Station',
                image: 'assets/images/image2.png'),
                 Gap(16),
              AvailableStation(
                stationName: 'Daniel-mac Workshop',
                stationType: 'Mechanic Station',
                image: 'assets/images/image4.png')
              
            ],
          )
        ],
      )
    );
  }
}