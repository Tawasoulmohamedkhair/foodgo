import 'package:flutter/material.dart';
import 'package:foodgo/theme/appcolor.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.only(left: 8,right: 8,top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            children: [
              Text(
                'Foodgo',
                style: TextStyle(
                    color: Appcolor.blackcolor,
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Order your favourite food!',
                style: TextStyle(
                    color: Appcolor.greycolor,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
          Image.asset(
            width: 60,
            height: 60,
            "assets/images/Profile.png",
          ),
        ],
      ),
    );
  }
}
