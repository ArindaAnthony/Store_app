import 'package:flutter/material.dart';

import '../Widgets/users_tile.dart';
class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: ()=>Navigator.of(context).pop(),
            child: const Icon(Icons.arrow_back_outlined, color: Colors.blue,)),
        title: const Text("All Users", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400, color: Colors.black87),),
      ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (ctx, index) {
              return const UsersWidget();
            })
    );
  }
}
