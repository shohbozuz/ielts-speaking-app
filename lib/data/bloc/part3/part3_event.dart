part of 'part3_bloc.dart';

@freezed
class Part3Event with _$Part3Event {
  const factory Part3Event.started() = _Started;
  const factory Part3Event.getPart2() = _GetPart3;

}
