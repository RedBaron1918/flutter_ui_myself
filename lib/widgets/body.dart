import 'package:clothe_store/data/data.dart';
import 'package:clothe_store/models/products.dart';
import 'package:clothe_store/widgets/elevated_button_style.dart';
import 'package:clothe_store/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:clothe_store/widgets/stack_image.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const StackImage(
              image:
                  "https://images.unsplash.com/photo-1519698363407-c948d65fbc94?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButtonStyle(
                padding: 10,
                callback: () {},
                color: Colors.white,
                textColor: Colors.black,
                text: "All",
                weight: FontWeight.w600,
              ),
              ElevatedButtonStyle(
                padding: 15,
                callback: () {},
                color: Colors.white,
                textColor: Colors.black,
                text: "Men's",
                weight: FontWeight.w600,
              ),
              ElevatedButtonStyle(
                padding: 15,
                callback: () {},
                color: Colors.white,
                textColor: Colors.black,
                text: "Woman's",
                weight: FontWeight.w600,
              ),
              ElevatedButtonStyle(
                padding: 15,
                callback: () {},
                color: Colors.white,
                textColor: Colors.black,
                text: "Kid's",
                weight: FontWeight.w600,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "New Drops",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "see all",
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                Product test = products[index];
                return ProductCard(product: test);
              },
            ),
          )
        ],
      ),
    );
  }
}
