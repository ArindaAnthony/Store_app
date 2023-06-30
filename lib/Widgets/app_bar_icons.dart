import 'package:flutter/material.dart';
class AppBarIcons extends StatelessWidget {
  final IconData icon;
  final Function function;
  const AppBarIcons({Key? key, required this.icon, required this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          function();
        },
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.redAccent,
          ),
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Icon(icon),
          ),
        ));
  }
}
