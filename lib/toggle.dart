import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  List<bool> isSelected = List.generate(2, (index) => false); // Initialize with 2 elements

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ToggleButtons(
        isSelected: isSelected,
        onPressed: (int index) {
          setState(() {
            isSelected[index] = !isSelected[index];
          });
        },
        borderRadius: BorderRadius.circular(12.0),
        borderColor: Colors.black,
        fillColor: Colors.white,
        children: const [
          Text('Take Away',style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold,),),
          Text("Dine Out",style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold,),),
        ],
      ),
    );
  }
}

