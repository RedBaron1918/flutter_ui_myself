import 'package:flutter/material.dart';

class ConfirmPage extends StatefulWidget {
  const ConfirmPage({super.key});

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      showModalBottomSheet(
          isDismissible: false,
          enableDrag: false,
          context: context,
          builder: (BuildContext context) {
            return SizedBox(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Level Up Your Style',
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: -2,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                      "when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(15),
                                  backgroundColor: Colors.deepOrange),
                              onPressed: () =>
                                  Navigator.pushNamed(context, "/home"),
                              child: const Text(
                                "Get Started",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w300),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.network(
              "https://images.unsplash.com/photo-1564485377539-4af72d1f6a2f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
