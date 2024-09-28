import 'package:flutter/material.dart';

class SeatSelectBox extends StatelessWidget {
  const SeatSelectBox(this.selectedRow, this.selectedCol, this.onSelected);
  final int? selectedRow;
  final int? selectedCol;
  final void Function(int rowNum, int colNum) onSelected;
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
          seat(rowNum, 1),
          seat(rowNum, 2),
          seat(rowNum, 3),
          seat(rowNum, 4),
          seat(rowNum, 5),
          seat(rowNum, 6),
          seat(rowNum, 7),
          seat(rowNum, 8),
          seat(rowNum, 9),
          seat(rowNum, 10),
        ],
      ),
    );
  }

  Widget seat(int rowNum, int colNum) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2),
        child: AspectRatio(
          aspectRatio: 1,
          child: GestureDetector(
            onTap: () {
              onSelected(rowNum, colNum);
            },
            child: Container(
              decoration: BoxDecoration(
                color: selectedRow == rowNum && selectedCol == colNum
                    ? Colors.amber
                    : Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
