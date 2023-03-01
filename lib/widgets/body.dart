import 'package:flutter/material.dart';
import 'package:clothe_store/widgets/stack_image.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        StackImage(
            image:
                "https://images.unsplash.com/photo-1519698363407-c948d65fbc94?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
      ],
    );
  }
}
