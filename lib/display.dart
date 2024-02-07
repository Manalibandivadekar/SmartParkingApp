import 'package:flutter/material.dart';
import 'book.dart';

class DisplayPage extends StatelessWidget {
  final List<bool> availableSlots = [true, true, false, true, false]; // Example availability list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parking Display'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (availableSlots.contains(true))
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: availableSlots.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      if (availableSlots[index]) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BookPage(slotNumber: index + 1)),
                        );
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: availableSlots[index] ? Colors.white : Colors.blue,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: Text(
                          (index + 1).toString(),
                          style: TextStyle(
                            color: availableSlots[index] ? Colors.black : Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )
            else
              Text(
                'No slots available',
                style: TextStyle(fontSize: 18.0),
              ),
          ],
        ),
      ),
    );
  }
}
