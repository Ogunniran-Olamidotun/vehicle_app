import 'package:flutter/material.dart';
import 'package:vehicle_repair_booking_app/utils/app_styles.dart';
import 'package:gap/gap.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool? isObscureText;
  final String? obscureCharacter;
  final String hintText;
  final Widget? suffixIcon;
  final String label;
  final double height1;

  const TextFieldInput({super.key,
  required this.controller,
  required this.hintText,
  this.isObscureText = false,
  this.keyboardType = TextInputType.text,
  this.obscureCharacter = '*',
  this.suffixIcon,
  required this.label,
  this.height1 = 18 ,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label,
              style: Styles.subtitle.copyWith(
                color: Styles.textcolor,
                fontSize: 12
              ),),
              Gap(6),
              Container(
                //height: 200,
                child: TextFormField(
                  controller: controller,
                  keyboardType:keyboardType ,
                  obscureText: isObscureText! ,
                  obscuringCharacter: obscureCharacter!,
                  style: Styles.subtitle,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical:height1 ),
                    constraints: BoxConstraints(
                   // maxHeight: height*0.065,
                    maxWidth: width  ),
                    filled: false,
                   // fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2,
                      color: Color(0XFFE6E7EE)),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    suffixIcon: suffixIcon,
                    hintText: hintText,
                    hintStyle: Styles.subtitle ,
                
                  ),
                ),
              )
            ],
          );

  }
}