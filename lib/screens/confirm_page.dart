import 'dart:ui';
import 'package:flutter/material.dart';

class ConfirmPage extends StatefulWidget {
  const ConfirmPage({Key? key}) : super(key: key);

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  double _bottomSheetHeight = 50.0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _animationController.forward();
    });
    _animationController.addListener(() {
      setState(() {
        _bottomSheetHeight = lerpDouble(50, 300, _animationController.value)!;
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Image.network(
              "https://images.unsplash.com/photo-1564485377539-4af72d1f6a2f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          height: _bottomSheetHeight,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Level Up Your Style',
                    style: TextStyle(
                      fontSize: 30,
                      letterSpacing: -2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                    "when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(15),
                            backgroundColor: Colors.deepOrange,
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, '/home'),
                          child: const Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          onEnd: () => setState(() => _bottomSheetHeight = 300),
        ),
      ),
    );
  }
}
