import 'package:flutter/material.dart';

class AppbarIcon extends StatelessWidget {
   AppbarIcon(this.icon2,this.onTap, {super.key, required this.icon, required this.onPressed});
  final IconData icon;
  final IconData icon2;
 final  VoidCallback onTap;
final  VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      IconButton(onPressed: onPressed, icon: Icon(icon),),
     InkWell(onTap: onTap,child: Icon(icon2)),

    ]);
  }
}
