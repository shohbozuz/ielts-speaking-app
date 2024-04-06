part of 'part1_bloc.dart';

@freezed
class Part1Event with _$Part1Event {
  const factory Part1Event.started() = _Started;


  const factory Part1Event.getPar1() = _GetPart1;
}
