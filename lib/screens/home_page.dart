import 'package:flutter/material.dart';
import 'package:the_black_web/injection.dart';
import 'package:the_black_web/model/account.dart';
import 'package:the_black_web/repositories/account_repository.dart';
import 'package:the_black_web/widgets/account_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Account> listAccount = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:
                const Text("The black", style: TextStyle(color: Colors.white)),
            backgroundColor: const Color(0xFF424242)),
        floatingActionButton: FloatingActionButton(
            backgroundColor: const Color(0xFF707070),
            onPressed: () async {
              var list = await getIt<AccountRepository>().getListAccount({});
              setState(() {
                listAccount = list;
              });
            },
            child: const Icon(Icons.download)),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: listAccount.length,
                  itemBuilder: (context, index) {
                    return AccountInfo(
                      user: listAccount[index],
                    );
                  }),
            )
          ],
        ));
  }
}
