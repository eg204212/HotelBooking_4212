import 'package:flutter/material.dart';
import 'package:hotelbookingmobile/payment.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking Summary'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            const Row(
              children: [
                Expanded(
                  child: Text(
                    'Hotel Information:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Expanded(
                  child: SizedBox.shrink(),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Row(
              children: [
                Expanded(
                  child: Text(
                    'Hotel Name:',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Expanded(
                  child: Text(
                    'ARALIYA RESORT',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: Text(
                    'Location:',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Sithawaka, Awissawella.',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: Text(
                    'Price:',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Expanded(
                  child: Text(
                    '5,000Rs per night',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 26),
            const Row(
              children: [
                Expanded(
                  child: Text(
                    'Booking Details:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Expanded(
                  child: SizedBox.shrink(),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Expanded(
                  child: Text(
                    'Booking Date:',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Expanded(
                  child: Text(
                    '2024-01-20',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: Text(
                    'Check-in:',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Expanded(
                  child: Text(
                    '2024-02-01',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: Text(
                    'Check-out:',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Expanded(
                  child: Text(
                    '2024-02-05',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: Text(
                    'Guests:',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Expanded(
                  child: Text(
                    '2 Adults',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: Text(
                    'Rooms:',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Expanded(
                  child: Text(
                    '1 Room',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            const SizedBox(height: 16),
            const Text(
              'Payment Details:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Expanded(
                  child: Text(
                    'Amount:',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Rs. 5,000',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: Text(
                    'Total:',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Rs. 5,000',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Payment()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                primary: Colors.purple,
                fixedSize: Size(400, 50),
              ),
              child: const Text('CONTINUE PAYMENT'),
            ),
          ],
        ),
      ),
    );
  }
}
