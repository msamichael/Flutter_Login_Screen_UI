import 'package:flutter/material.dart';

class Squaretile extends StatelessWidget {
  String image;

   Squaretile({
    super.key,
    required this.image,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
                  
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Image.asset(
                    image,
                    height: 72,
                    ),
                );
  }
}

