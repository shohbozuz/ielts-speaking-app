part of 'part2_bloc.dart';

@freezed
class Part2State with _$Part2State {
  const factory Part2State.initial() = _Initial;
  const factory Part2State.loading() = _Loading;

  const factory Part2State.error(String err) = _Error;

  const factory Part2State.success(List<Part2Model> data) = _Success;
}
