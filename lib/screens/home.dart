import 'package:flutter/material.dart';
import 'package:clothe_store/widgets/circle_button.dart';
import 'package:flutter/services.dart';
import 'package:clothe_store/widgets/search_bar.dart';
import 'package:clothe_store/widgets/body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final ScrollController controller = ScrollController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        controller: controller,
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            leadingWidth: 190,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            backgroundColor: Colors.black,
            floating: true,
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
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Text(
                            "ship to ",
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                          const Text(
                            "Tbilisi",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
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
                icon: Icons.notifications_none_rounded,
                iconSize: 18,
                press: () {},
              ),
              CircleButton(
                icon: Icons.shopping_bag_outlined,
                iconSize: 18,
                press: () {},
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration:
                  BoxDecoration(color: Colors.black, border: Border.all()),
              child: const SearchBar(),
            ),
          ),
          const SliverToBoxAdapter(
            child: Body(),
          )
        ],
      ),
    );
  }
}
