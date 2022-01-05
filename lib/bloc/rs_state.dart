part of 'rs_bloc.dart';

abstract class RsState extends Equatable {
  const RsState();

  @override
  List<Object> get props => [];
}

class RsInitial extends RsState {}

class RsLoading extends RsState {}

class RsLoadingSuccses extends RsState {
  final List<RumahSakit> rumahSakits;

  const RsLoadingSuccses({
    required this.rumahSakits,
  });
}

class RsLoadingError extends RsState {}
