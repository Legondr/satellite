import 'dart:ffi';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:satelite/router.dart';
import 'package:geolocator/geolocator.dart';
import 'package:satelite/tracker_service.dart';

@RoutePage()
class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  bool isSwitched = false;
  final TextEditingController _satelliteIdController =
      TextEditingController(); // Step 1: Create a controller

  @override
  void dispose() {
    _satelliteIdController
        .dispose(); // Clean up the controller when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Find Satellite',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            TextField(
              controller:
                  _satelliteIdController, // Step 1: Attach the controller
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Type satellite ID',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            // Switch widget
            Row(
              children: [
                const Text('Visible'),
                const Spacer(),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () async {
                final String satelliteId = _satelliteIdController.text;

                // Validate the input
                if (satelliteId.isNotEmpty) {
                  // You can now pass the satelliteId to trackerService or another function
                  // Example: trackerService.findSatellite(satelliteId);
                  // For now, we'll simply navigate to Route3

                  // Example: Storing or using the satelliteId
                  print(
                      'Satellite ID entered: $satelliteId'); // Debug print statement
                  SatelliteService.getSatellitePasses(id: satelliteId);
                  // Navigate to Route3
                  context.router.push(const Route3());
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please enter a satellite ID')),
                  );
                }
              },
              child: const Text('Find satellite'),
            ),
          ],
        ),
      ),
    );
  }
}
