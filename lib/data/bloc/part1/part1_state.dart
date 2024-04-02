part of 'part1_bloc.dart';

@freezed
class Part1State with _$Part1State {
  const factory Part1State.initial() = _Initial;

  const factory Part1State.loading() = _Loading;

  const factory Part1State.error(String err) = _Error;

  const factory Part1State.success(List<Part1Model> data) = _Success;
}
