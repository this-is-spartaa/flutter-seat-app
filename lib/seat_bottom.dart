import 'package:flutter/material.dart';

class SeatBottom extends StatelessWidget {
  const SeatBottom(this.selectedRow, this.selectedCol);
  final int? selectedRow;
  final int? selectedCol;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
            selectedRow == null && selectedCol == null
                ? '선택된 좌석이 없습니다'
                : '좌석 : $selectedRow - $selectedCol',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 200,
            height: 56,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
              child: Text(
                'Book now',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
