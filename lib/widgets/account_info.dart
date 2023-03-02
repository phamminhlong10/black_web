import 'package:flutter/cupertino.dart';
import 'package:the_black_web/model/account.dart';

class AccountInfo extends StatelessWidget {
  final Account user;
  const AccountInfo({Key? key, required this.user }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                user.id ?? ""),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(user.nickname ?? ""),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(user.email ?? ""),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
                height: 64,
                user.images?.first ?? "https://i.imgur.com/lAncCJS.jpeg"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(user.phone ?? ""),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(user.job ?? ""),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(user.location?.values.first ?? ""),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(user.dob ?? ""),
          )
        ],
      ),
    );
  }
}
