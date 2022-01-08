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

  /// fetch data
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

  /// login telpon
  FutureOr<void> onCallnumm(CallNumEvent event, Emitter<RsState> emit) async {
    if (await canLaunch(event.number)) {
      await launch(event.number);
    }
  }

  /// logic search Rs
  FutureOr<void> onSearchRS(SearchEvent event, Emitter<RsState> emit) async {
    emit(RsLoading());
    try {
      List<RumahSakit> rsList = mockRs.rumahSakits;

      List<RumahSakit> searchListRS = rsList.where((element) {
        return element.nama
            .toLowerCase()
            .contains(event.searchRs.toLowerCase());
      }).toList();
      if (searchListRS.isNotEmpty) {
        emit(RsLoadingSuccses(rumahSakits: searchListRS));
      } else {
        emit(RsLoadingEmptyState());
      }
    } catch (e) {
      emit(RsLoadingError());
    }
  }
}
