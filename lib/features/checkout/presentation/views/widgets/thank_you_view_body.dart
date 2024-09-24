import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: const Color(0xFFD9D9D9),
            ),
          ),
          Positioned(
            left: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            right: -20,
            bottom: MediaQuery.sizeOf(context).height * .2,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
            top: -50,
            left: 0,
            right: 0,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFFD9D9D9),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xFF34A853),
                child: Icon(
                  Icons.check,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
