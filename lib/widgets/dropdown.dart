import 'package:flutter/material.dart';
class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String selectedCountry = 'Nepal';
  List<String> countries = [
    'Nepal',
    'India',
    'Pakistan',
    'USA',
    'Newzealand'
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('DropDown Demo'),
      ),
      body: 
      Center(child: DropdownButton<String>(value:selectedCountry,
      isExpanded: true,
      dropdownColor: Colors.grey.shade200,
      items:countries.map((String country){
        return DropdownMenuItem<String>(
          value: country,
          child: Text(country));

      }).toList(),
      onChanged:(String ? newValue) {
        setState(() {
          selectedCountry=newValue!;
        });
        
      },),)
    );
  }
}