import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class ConnpassEvent with _$ConnpassEvent {
  factory ConnpassEvent({
    @Default(false) bool isExpanded,
    @Default(0) int eventId,
    @Default('') String title,
    @Default('') String catchKey,
    @Default('') String description,
    @Default('') String eventUrl,
    @Default('') String startedAt,
    @Default(0) int limit,
    @Default('') String hashTag,
    @Default('') String eventType,
    @Default(0) int accepted,
    @Default(0) int waiting,
    @Default('') String updatedAt,
    @Default(0) int ownerId,
    @Default('') String ownerNickname,
    @Default('') String ownerDisplayName,
    @Default('') String place,
    @Default('') String address,
    @Default('') String lat,
    @Default('') String lon,
    EventSeries? series,
  }) = _ConnpassEvent;

  factory ConnpassEvent.fromJson(Map<String, dynamic> json) =>
      _$ConnpassEventFromJson(json);
}

@freezed
class EventSeries with _$EventSeries {
  factory EventSeries({
    @Default(0) int id,
    @Default('') String title,
    @Default('') String url,
  }) = _EventSeries;

  factory EventSeries.fromJson(Map<String, dynamic> json) =>
      _$EventSeriesFromJson(json);
}
