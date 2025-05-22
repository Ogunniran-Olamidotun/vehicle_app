import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vehicle_repair_booking_app/utils/app_styles.dart';
import 'package:vehicle_repair_booking_app/widgets/bottom_bar.dart';
import 'package:vehicle_repair_booking_app/widgets/dropdown.dart';
import 'package:vehicle_repair_booking_app/widgets/Date_and_time_picker.dart';

import 'package:vehicle_repair_booking_app/widgets/description_field.dart';

class BookAppointmentScreen extends StatefulWidget {
  const BookAppointmentScreen({super.key});

  @override
  State<BookAppointmentScreen> createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
  final TextEditingController descriptionController= TextEditingController();

  Future<void> _submitAppointment(BuildContext context) async {
    // Show loading dialog
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const Center(child: CircularProgressIndicator()),
    );

    // Simulate API call delay
    await Future.delayed(const Duration(seconds: 2));

    // Dismiss the loading dialog
    Navigator.of(context).pop();

    // Show success message
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Appointment booked successfully!'),
        backgroundColor: Colors.green,
      ),
    );

   // Delay before navigating
  await Future.delayed(const Duration(seconds: 1));

  // Navigate to AvailableStation
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => const BottomBar()
    ),
  );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 32),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Book an Appointment',
                  style: Styles.header.copyWith(
                    color: const Color(0XFF3532D7),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Gap(32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Vehicle Type',
                    style: TextStyle(
                      color: Color(0XFF2A2A2A),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Gap(6),
                   FullWidthDropdown(),
                ],
              ),
              const Gap(33),
              const DateTimePickerScreen(),
              const Gap(33),
              DescriptionField (controller_: descriptionController),
              const Gap(260),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Styles.primaryColor,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 87,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () => _submitAppointment(context),
                  child: Text(
                    'Book Appointment',
                    style: Styles.header.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
