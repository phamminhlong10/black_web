import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_black_web/app.dart';
import 'package:the_black_web/bloc/app_bloc.dart';
import 'package:the_black_web/bloc/app_event.dart';
import 'package:the_black_web/bloc/app_state.dart';
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
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
              title: const Text(
                  "The black",
                  style: TextStyle(color: Colors.white)),
              backgroundColor: const Color(0xFF424242)),
          floatingActionButton: FloatingActionButton(
              backgroundColor: const Color(0xFF707070),
              onPressed: () => context.read<AppBloc>().add(FetchData()),
              child: const Icon(Icons.download)),
          body: Column(
            children: [
              BlocBuilder<AppBloc, AppState>(
                builder: (context, state) {
                  if (state is AppLoadingState) {
                    return const Center(child: Text("Loading..."));
                  }
                  if (state is AppSuccessState) {
                    return Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: MediaQuery.of(context).size.width < 730 ? 2 : 3,
                          mainAxisExtent: 250
                        ),
                          itemCount: state.users.length,
                          itemBuilder: (context, index) {
                            return AccountInfo(
                              user: state.users[index],
                            );
                          }),
                    );
                  }
                  return const Center(child: Text("Hello world"));
                },
              )
            ],
          )),
    );
  }
}
