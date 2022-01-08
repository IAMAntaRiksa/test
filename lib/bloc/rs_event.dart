part of 'rs_bloc.dart';

abstract class RsEvent extends Equatable {
  const RsEvent();

  @override
  List<Object> get props => [];
}

class FetchRs extends RsEvent {}

class CallNumEvent extends RsEvent {
  final String number;
  const CallNumEvent({
    required this.number,
  });
}

class GoogleMapEvent extends RsEvent {
  final double longitude;
  final double latitude;

  const GoogleMapEvent({
    required this.longitude,
    required this.latitude,
  });
}

class SearchEvent extends RsEvent {
  final String searchRs;
  const SearchEvent({
    required this.searchRs,
  });
}
