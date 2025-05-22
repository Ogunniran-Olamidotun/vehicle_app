import 'package:flutter/material.dart';
import 'package:vehicle_repair_booking_app/utils/app_styles.dart';
class DescriptionField extends StatelessWidget {
  final TextEditingController controller_;

  DescriptionField({
    required this.controller_,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
  controller: controller_,
  keyboardType: TextInputType.multiline,
  maxLines: null, // Unlimited lines
  minLines: 5,    // Starts with 5 lines tall
  style: Styles.subtitle,
  decoration: InputDecoration(
    hintText: "Enter a detailed description...",
    filled: false,
    fillColor: Colors.white,
    alignLabelWithHint: true,
    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color(0XFFE6E7EE)),
    ),
  ),
)
 ,
    );
  }
}