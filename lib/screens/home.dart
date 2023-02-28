import 'package:flutter/material.dart';
import 'package:clothe_store/widgets/circle_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 69,
        backgroundColor: Colors.black,
        leadingWidth: 290,
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 20,
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                backgroundImage: NetworkImage(
                    "https://scontent.ftbs6-2.fna.fbcdn.net/v/t1.18169-9/1391743_603079143062900_1606433576_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=GqvQFpjEGY4AX9irYgY&_nc_ht=scontent.ftbs6-2.fna&oh=00_AfDtHLZX-Kut-WFe1juEjMvhqHFqUeyAD4Q0XhB4E0mctg&oe=6425834A"),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hi, Kote",
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    children: [
                      Text(
                        "ship to ",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const Text(
                        "Tbilisi",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 10,
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        actions: [
          CircleButton(
            icon: Icons.alternate_email,
            iconSize: 18,
            press: () {},
          ),
          CircleButton(
            icon: Icons.shopping_bag,
            iconSize: 18,
            press: () {},
          ),
        ],
      ),
    );
  }
}
