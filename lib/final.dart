import 'package:flutter/material.dart';
import 'package:hotelbookingmobile/start.dart';

class Final extends StatelessWidget {
  const Final({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/final_image.png",
              width: 400,
              height: 450,
              alignment: Alignment(0, -0.5),
            ),

            Text(
              'CONGRATULATIONS!!!',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 320,
              child: const Text(
                "Your hotel stay is secured. "
                "Counting down to your"
                "dream Vacation",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the Createacc page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Start()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 110, vertical: 10),
                primary: const Color.fromARGB(255, 124, 3, 146),
              ),
              child: Text(
                "GO HOME",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            // View E-Receipt Link
            TextButton(
              onPressed: () {
                // Add logic to view e-receipt
              },
              child: Text(
                'VIEW E-RECEIPT',
                style: TextStyle(
                  color: Colors.purple,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
