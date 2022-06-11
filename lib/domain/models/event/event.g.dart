// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConnpassEvent _$$_ConnpassEventFromJson(Map<String, dynamic> json) =>
    _$_ConnpassEvent(
      isExpanded: json['isExpanded'] as bool? ?? false,
      eventId: json['eventId'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      catchKey: json['catchKey'] as String? ?? '',
      description: json['description'] as String? ?? '',
      eventUrl: json['eventUrl'] as String? ?? '',
      startedAt: json['startedAt'] as String? ?? '',
      limit: json['limit'] as int? ?? 0,
      hashTag: json['hashTag'] as String? ?? '',
      eventType: json['eventType'] as String? ?? '',
      accepted: json['accepted'] as int? ?? 0,
      waiting: json['waiting'] as int? ?? 0,
      updatedAt: json['updatedAt'] as String? ?? '',
      ownerId: json['ownerId'] as int? ?? 0,
      ownerNickname: json['ownerNickname'] as String? ?? '',
      ownerDisplayName: json['ownerDisplayName'] as String? ?? '',
      place: json['place'] as String? ?? '',
      address: json['address'] as String? ?? '',
      lat: json['lat'] as String? ?? '',
      lon: json['lon'] as String? ?? '',
      series: json['series'] == null
          ? null
          : EventSeries.fromJson(json['series'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ConnpassEventToJson(_$_ConnpassEvent instance) =>
    <String, dynamic>{
      'isExpanded': instance.isExpanded,
      'eventId': instance.eventId,
      'title': instance.title,
      'catchKey': instance.catchKey,
      'description': instance.description,
      'eventUrl': instance.eventUrl,
      'startedAt': instance.startedAt,
      'limit': instance.limit,
      'hashTag': instance.hashTag,
      'eventType': instance.eventType,
      'accepted': instance.accepted,
      'waiting': instance.waiting,
      'updatedAt': instance.updatedAt,
      'ownerId': instance.ownerId,
      'ownerNickname': instance.ownerNickname,
      'ownerDisplayName': instance.ownerDisplayName,
      'place': instance.place,
      'address': instance.address,
      'lat': instance.lat,
      'lon': instance.lon,
      'series': instance.series,
    };

_$_EventSeries _$$_EventSeriesFromJson(Map<String, dynamic> json) =>
    _$_EventSeries(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      url: json['url'] as String? ?? '',
    );

Map<String, dynamic> _$$_EventSeriesToJson(_$_EventSeries instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
    };
