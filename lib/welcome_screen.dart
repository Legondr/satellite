import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:satelite/find_satellite_screen.dart';
import 'package:satelite/router.dart';

@RoutePage()
class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Welcome',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.router.push(const Route2());
          },
          child: const Text('Go to Find Satellite Screen'),
        ),
      ),
    );
  }
}
