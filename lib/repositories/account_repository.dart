import 'package:the_black_web/model/account.dart';

abstract class AccountRepository{
  Future<List<Account>> getListAccount(Map<String, dynamic> queries);
}