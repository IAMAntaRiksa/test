import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_coding/model/rumah_sakit.dart';
import 'package:test_coding/repository/rs_repository.dart';
import 'package:url_launcher/url_launcher.dart';
part 'rs_event.dart';
part 'rs_state.dart';

class RsBloc extends Bloc<RsEvent, RsState> {
  RsResponse mockRs = RsResponse();
  RsBloc() : super(RsInitial()) {
    on<FetchRs>(onFetcRS);
    on<CallNumEvent>(onCallnumm);
    on<SearchEvent>(onSearchRS);
  }

  FutureOr<void> onFetcRS(FetchRs event, Emitter<RsState> emit) {
    emit(RsLoading());
    try {
      List<RumahSakit> itemListRs = mockRs.rumahSakits;
      if (itemListRs.isNotEmpty) {
        emit(RsLoadingSuccses(rumahSakits: itemListRs));
      }
    } catch (e) {
      emit(RsLoadingError());
    }
  }

  FutureOr<void> onCallnumm(CallNumEvent event, Emitter<RsState> emit) async {
    if (await canLaunch(event.number)) {
      await launch(event.number);
    }
  }

  FutureOr<void> onSearchRS(SearchEvent event, Emitter<RsState> emit) async {
    try {
      List<RumahSakit> rsList = mockRs.rumahSakits;

      bool check = rsList
          .map((element) => element.nama.contains(event.searchRs))
          .contains(true);
      if (check) {
        print('ada data');
      } else {
        print('tidak ad data');
      }
    } catch (e) {
      emit(RsLoadingError());
    }
  }
}
