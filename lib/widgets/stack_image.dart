import 'package:clothe_store/widgets/elevated_button_style.dart';
import 'package:flutter/material.dart';

class StackImage extends StatelessWidget {
  final String image;
  const StackImage({required this.image, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Center(
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image(
                image: NetworkImage(image),
                width: 350,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black26],
                  ),
                  borderRadius: BorderRadius.circular(12)),
            ),
            const Positioned(
              bottom: 30,
              left: 8,
              child: Text(
                "Monclear",
                style: TextStyle(
                    color: Color.fromARGB(255, 170, 170, 170),
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Positioned(
              bottom: 1,
              left: 8,
              child: Text(
                "Luxury SportWear",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 6,
              right: 8,
              child: ElevatedButtonStyle(
                callback: () {},
                padding: 10,
                color: Colors.deepOrange,
                text: "View Collection",
                textColor: Colors.white,
                weight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
