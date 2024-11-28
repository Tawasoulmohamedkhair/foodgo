import 'package:flutter/material.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        padding: const EdgeInsets.only(left: 8),
        width: 319,
        child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: Color(0xff3C2F2F),
              size: 24,
            ),
            hintText: 'Search',
            hintStyle: const TextStyle(
                color: Color(0xff3C2F2F),
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      const SizedBox(width: 10),
      Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: const Color(0xffEF2A39),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Icon(size: 24, color: Colors.white, Icons.tune_sharp)),
    ]);
  }
}
