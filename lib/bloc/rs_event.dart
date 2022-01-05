part of 'rs_bloc.dart';

abstract class RsEvent extends Equatable {
  const RsEvent();

  @override
  List<Object> get props => [];
}

class FetchRs extends RsEvent {}
