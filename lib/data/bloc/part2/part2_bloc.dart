import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_speaking/data/model/part2.dart';
import 'package:ielts_speaking/data/service/part2.dart';

part 'part2_event.dart';
part 'part2_state.dart';
part 'part2_bloc.freezed.dart';

class Part2Bloc extends Bloc<Part2Event, Part2State> {
  Part2Bloc() : super(const Part2State.initial()) {
    on<_GetPart2>((event, emit) => getPart2(event, emit));

    add(const _GetPart2());
  }


  final Part2Service _part2Service = Part2Service();


  Future<void> getPart2(_GetPart2 event, Emitter<Part2State> emit) async {
    emit(const Part2State.loading());
    final res = await _part2Service.getPart2();
    res.fold(
          (error) => emit(Part2State.error(error)),
          (data) => emit(Part2State.success(data)),
    );
  }

}
