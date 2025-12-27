import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // for formatting the date

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DatePickerTextFieldDemo(),
    );
  }
}

class DatePickerTextFieldDemo extends StatefulWidget {
  const DatePickerTextFieldDemo({super.key});

  @override
  State<DatePickerTextFieldDemo> createState() => _DatePickerTextFieldDemoState();
}

class _DatePickerTextFieldDemoState extends State<DatePickerTextFieldDemo> {
  final TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        _dateController.text = DateFormat('dd/MM/yyyy').format(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DatePicker in TextField")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _dateController,
          readOnly: true, // prevent manual editing
          decoration: const InputDecoration(
            labelText: "Select Date",
            suffixIcon: Icon(Icons.calendar_today),
          ),
          onTap: () => _selectDate(context),
        ),
      ),
    );
  }
}