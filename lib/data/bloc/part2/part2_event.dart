part of 'part2_bloc.dart';

@freezed
class Part2Event with _$Part2Event {
  const factory Part2Event.started() = _Started;
  const factory Part2Event.getPart2() = _GetPart2;
}
