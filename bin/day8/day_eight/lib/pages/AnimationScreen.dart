import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';

class AnimationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Drawing Based Animation -lottie & rive",
              ),

              SizedBox(
                height: 10,
              ),
              Lottie.network(
                  'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
              SizedBox(
                height: 50,
              ),

              Container(
                height: 300,
                width: 300,
                child: RiveAnimation.network(
                  'https://cdn.rive.app/animations/vehicles.riv',
                  artboard: 'Truck',
                  animations: ["curves", "idle"],
                ),
              ),

              //  RiveAnimation.asset('assets/truck.riv')
            ],
          ),
        ),
      ),
    );
  }
}
