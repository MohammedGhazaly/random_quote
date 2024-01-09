import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:quote_gen_clean_arc/core/error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failures, Type>> call(Params params);
}

class NoParam extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

//Test
class LoginParams extends Equatable {
  final String userName;
  final String password;

  const LoginParams({required this.userName, required this.password});
  @override
  // TODO: implement props
  List<Object?> get props => [userName, password];
}
