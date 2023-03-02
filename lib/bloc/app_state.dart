import 'package:equatable/equatable.dart';
import 'package:the_black_web/model/account.dart';

abstract class AppState extends Equatable{
  @override
  List<Object?> get props => [];
}

class AppInitialState extends AppState{}

class AppLoadingState extends AppState{}
class AppSuccessState extends AppState{
  final List<Account> users;
  AppSuccessState({required this.users});

  @override
  // TODO: implement props
  List<Object?> get props => [users];
}
class AppFailureState extends AppState{
  final String message;
  AppFailureState({required this.message});

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}