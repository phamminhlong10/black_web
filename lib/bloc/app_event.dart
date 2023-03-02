import 'package:equatable/equatable.dart';

abstract class AppEvent extends Equatable{
}

class FetchData extends AppEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}