part of 'part3_bloc.dart';

@freezed
class Part3State with _$Part3State {
  const factory Part3State.initial() = _Initial;

  const factory Part3State.loading() = _Loading;

  const factory Part3State.error(String err) = _Error;

  const factory Part3State.success(List<Part3Model> data) = _Success;
}
