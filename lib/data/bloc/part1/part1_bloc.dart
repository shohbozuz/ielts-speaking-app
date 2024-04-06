import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_speaking/data/service/part1.dart';

import '../../model/part1.dart';

part 'part1_event.dart';

part 'part1_state.dart';

part 'part1_bloc.freezed.dart';

class Part1Bloc extends Bloc<Part1Event, Part1State> {
  Part1Bloc() : super(const Part1State.initial()) {
    on<_GetPart1>((event, emit) => getPart1(event, emit));

    add(const _GetPart1());
  }

  final Part1Service _part1Service = Part1Service();

  Future<void> getPart1(_GetPart1 event, Emitter<Part1State> emit) async {
    emit(const Part1State.loading());

    final res = await _part1Service.getPart1();

    res.fold(
      (error) => emit(Part1State.error(error)),
      (data) => emit(Part1State.success(data)),
    );
  }
}
