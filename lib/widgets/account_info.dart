import 'package:flutter/material.dart';
import 'package:the_black_web/model/account.dart';

class AccountInfo extends StatelessWidget {
  final Account user;
  const AccountInfo({Key? key, required this.user }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
                height: 150,
                fit: BoxFit.fitWidth,
                user.images?.first ?? "https://i.imgur.com/lAncCJS.jpeg"),
          ),
          Text(user.nickname ?? ""),
          Text(user.email ?? ""),
          Text(user.phone ?? ""),
          Text(user.location?.values.first ?? ""),
        ],
      ),
    );
  }
}


/*
* Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              user.id ?? ""),
          Text(user.nickname ?? ""),
          Text(user.email ?? ""),
          Image.network(
              height: 64,
              user.images?.first ?? "https://i.imgur.com/lAncCJS.jpeg"),
          Text(user.phone ?? ""),
          Text(user.job ?? ""),
          Text(user.location?.values.first ?? ""),
          Text(user.dob ?? "")
        ],
      )
*  */