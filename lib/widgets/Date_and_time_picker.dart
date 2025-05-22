import 'package:flutter/material.dart';
class DateTimePickerScreen extends StatefulWidget {
  const DateTimePickerScreen({super.key});

  @override
  State<DateTimePickerScreen> createState() => _DateTimePickerScreenState();
}

class _DateTimePickerScreenState extends State<DateTimePickerScreen> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();

  @override
  void dispose() {
    _dateController.dispose();
    _timeController.dispose();
    super.dispose();
  }

  Future<void> _pickDate() async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (date != null) {
      setState(() {
        selectedDate = date;
        _dateController.text = '${date.day.toString().padLeft(2, '0')}-'
                               '${date.month.toString().padLeft(2, '0')}-'
                               '${date.year}';
      });
    }
  }

  Future<void> _pickTime() async {
    final TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );
    if (time != null) {
      setState(() {
        selectedTime = time;
        _timeController.text = time.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(        
        child: Row(
          children: [
            // Date Field
            Expanded(
              child: GestureDetector(
                onTap: _pickDate,
                child: AbsorbPointer(
                  child: TextFormField(
                    controller: _dateController,
                    decoration: InputDecoration(
                      labelText: 'Date',
                      suffixIcon: const Icon(Icons.calendar_today),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            // Time Field
            Expanded(
              child: GestureDetector(
                onTap: _pickTime,
                child: AbsorbPointer(
                  child: TextFormField(
                    controller: _timeController,
                    decoration: InputDecoration(
                      labelText: 'Time',
                      suffixIcon: const Icon(Icons.access_time),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}