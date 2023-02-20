import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final Color boxColor;
  final Color textColorl;
  final IconData dolorIcon;
  final String mainText;
  final String howMuch;
  final String kiho;
  final bool isInverted;
  double order;

  CurrencyCard({
    super.key,
    required this.boxColor,
    required this.textColorl,
    required this.dolorIcon,
    required this.mainText,
    required this.howMuch,
    required this.kiho,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    double offset = order * 10;
    return Transform.translate(
      offset: Offset(
        0,
        offset,
      ),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mainText,
                    style: TextStyle(
                      color: isInverted ? Colors.white : Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        howMuch,
                        style: TextStyle(
                          color: isInverted ? Colors.white : Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        kiho,
                        style: TextStyle(
                          color: isInverted ? Colors.white : Colors.black,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Transform.scale(
                scale: 2,
                child: Transform.translate(
                  offset: const Offset(-5, 15),
                  child: Icon(
                    dolorIcon,
                    color: isInverted ? Colors.white : Colors.black,
                    size: 88,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
