import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vehicle_repair_booking_app/utils/app_styles.dart';
import 'package:vehicle_repair_booking_app/screens/book_appointment_screen.dart'; // Ensure this import exists

class AvailableStation extends StatelessWidget {
  final String stationName;
  final String stationType;
  final String image;

  const AvailableStation({
    super.key,
    required this.stationName,
    required this.stationType,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => BookAppointmentScreen(),
          ),
        );
      },
      child: Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 147,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Gap(10),
            Row(
              children: [
                Icon(Icons.star, color: Styles.primaryColor, size: 17),
                const Gap(1.5),
                Icon(Icons.star, color: Styles.primaryColor, size: 17),
                const Gap(1.5),
                Icon(Icons.star, color: Styles.primaryColor, size: 17),
                const Gap(1.5),
                Icon(Icons.star, color: Styles.primaryColor, size: 17),
                const Gap(1.5),
                Icon(Icons.star, color: Styles.primaryColor, size: 17),
                const Gap(2),
                Text(
                  '(130 Reviews)',
                  style: Styles.smalltext,
                ),
              ],
            ),
            const Gap(5),
            Text(
              stationName,
              style: Styles.header.copyWith(fontWeight: FontWeight.bold),
            ),
            const Gap(5),
            Text(
              '1,500m Away',
              style: Styles.header.copyWith(fontWeight: FontWeight.normal),
            ),
            const Gap(10),
            Container(
              width: 143,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0XFFB0AFFE),
              ),
              child: Center(
                child: Text(
                  stationType,
                  style: Styles.subtitle.copyWith(
                    color: Styles.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
