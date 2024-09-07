import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/dropdown/gf_multiselect.dart';
import 'package:getwidget/types/gf_checkbox_type.dart';
import 'package:multiselect/multiselect.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> variantsList = [
    'Noida',
    "Delhi",
    "Goa",
    "Mumbai",
    "Bihar",
    "Bangalore",
    "UP",
    "Pune",
    "Surat",
    "Nashik"
  ];
  List<String> selectedCheckBoxValue = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 300,
          height: 100,
          padding: const EdgeInsets.all(20),
          child: DropDownMultiSelect(
            hintStyle: TextStyle(fontSize: 30),
            icon: Container(),
            decoration: InputDecoration(
              fillColor: Theme.of(context).colorScheme.onPrimary,
              focusColor: Theme.of(context).colorScheme.onPrimary,
              prefixIcon: Icon(Icons.home),
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left:40),
            
            labelStyle: TextStyle(fontSize: 30),

 ),
              options: variantsList,
            selectedValues: selectedCheckBoxValue,
            onChanged: (List<String> value) {
              //   value = selectedCheckBoxValue;
              print("${selectedCheckBoxValue}");
            },
            whenEmpty: 'Select Location',
          ),
        ),

    
    
       ],
    );
  }

}

