import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SeatSelectBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Screen',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          row(1),
          SizedBox(height: 10),
          row(2),
          SizedBox(height: 10),
          row(3),
          SizedBox(height: 10),
          row(4),
          SizedBox(height: 10),
          row(5),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              seatInfo('Available', Colors.grey),
              SizedBox(width: 4),
              seatInfo('Selected', Colors.amber),
            ],
          ),
        ],
      ),
    );
  }

  Row seatInfo(String text, Color color) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        SizedBox(width: 4),
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        )
      ],
    );
  }

  Padding row(int rowNum) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
              child: Text(
                '$rowNum',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          seat(),
          seat(),
          seat(),
          seat(),
          seat(),
          seat(),
          seat(),
          seat(),
          seat(),
          seat(),
        ],
      ),
    );
  }

  Widget seat() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
