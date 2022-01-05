import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_coding/model/rumah_sakit.dart';
import 'package:test_coding/repository/rs_repository.dart';
part 'rs_event.dart';
part 'rs_state.dart';

class RsBloc extends Bloc<RsEvent, RsState> {
  RsResponse mockRs = RsResponse();
  RsBloc() : super(RsInitial()) {
    on<FetchRs>(onFetcRS);
  }

  FutureOr<void> onFetcRS(FetchRs event, Emitter<RsState> emit) {
    emit(RsLoading());

    try {
      List<RumahSakit> itemList = mockRs.rumahSakits;
      if (itemList.isNotEmpty) {
        emit(RsLoadingSuccses(rumahSakits: itemList));
      }
    } catch (e) {
      emit(RsLoadingError());
    }
  }
}
