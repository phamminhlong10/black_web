

import 'package:the_black_web/bloc/app_event.dart';
import 'package:the_black_web/bloc/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_black_web/repositories/account_repository.dart';

class AppBloc extends Bloc<AppEvent, AppState>{
  final AccountRepository accountRepository;
   AppBloc({required this.accountRepository}) : super(AppInitialState()) {
     on<FetchData>((event, emit) async {
       emit(AppLoadingState());
       emit(AppSuccessState(users: await accountRepository.getListAccount({})));
     });
   }

   // AppState _successOrFailure(){
   //
   // }
}