import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:satelite/router.dart';

@RoutePage()
class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: ElevatedButton(
          onPressed: () {
            context.router.maybePop();
          },
          child: Text('Find new satellite')),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Satellite ID: '),
          Text('Rise: '),
        ],
      ),
    );
  }
}
