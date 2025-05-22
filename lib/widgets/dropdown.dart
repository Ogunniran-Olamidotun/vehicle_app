import 'package:flutter/material.dart';

class FullWidthDropdown extends StatefulWidget {
  @override
  _FullWidthDropdownState createState() => _FullWidthDropdownState();
}

class _FullWidthDropdownState extends State<FullWidthDropdown> {
  String? selectedValue;
  final List<String> items = ['Toyota', 'Honda', 'Hyundai', 'Lexus'];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: DropdownButtonFormField<String>(
          value: selectedValue,
          decoration: InputDecoration(
          labelText: "Select Vehicle type",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              
              
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
          isExpanded: true,
          icon: Icon(Icons.arrow_drop_down),
          items: items.map((String items) {
            return DropdownMenuItem<String>(
              value: items,
              child: Text(items),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue;
            });
          },
        ),
      );
  }
}
