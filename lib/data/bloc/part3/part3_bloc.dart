import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_speaking/data/model/part3.dart';
import 'package:ielts_speaking/data/service/part3.dart';

part 'part3_event.dart';
part 'part3_state.dart';
part 'part3_bloc.freezed.dart';

class Part3Bloc extends Bloc<Part3Event, Part3State> {
  Part3Bloc() : super(const Part3State.initial()) {
    on<_GetPart3>((event, emit) => getPart3(event, emit));

    add(const _GetPart3());
  }


  final Part3Service _part3Service = Part3Service();


  Future<void> getPart3(_GetPart3 event, Emitter<Part3State> emit) async {
    emit(const Part3State.loading());
    final res = await _part3Service.getPart3();
    res.fold(
          (error) => emit(Part3State.error(error)),
          (data) => emit(Part3State.success(data)),
    );
  }
}
