// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConnpassEvent _$ConnpassEventFromJson(Map<String, dynamic> json) {
  return _ConnpassEvent.fromJson(json);
}

/// @nodoc
mixin _$ConnpassEvent {
  bool get isExpanded => throw _privateConstructorUsedError;
  int get eventId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get catchKey => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get eventUrl => throw _privateConstructorUsedError;
  String get startedAt => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  String get hashTag => throw _privateConstructorUsedError;
  String get eventType => throw _privateConstructorUsedError;
  int get accepted => throw _privateConstructorUsedError;
  int get waiting => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  int get ownerId => throw _privateConstructorUsedError;
  String get ownerNickname => throw _privateConstructorUsedError;
  String get ownerDisplayName => throw _privateConstructorUsedError;
  String get place => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  String get lon => throw _privateConstructorUsedError;
  EventSeries? get series => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnpassEventCopyWith<ConnpassEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnpassEventCopyWith<$Res> {
  factory $ConnpassEventCopyWith(
          ConnpassEvent value, $Res Function(ConnpassEvent) then) =
      _$ConnpassEventCopyWithImpl<$Res>;
  $Res call(
      {bool isExpanded,
      int eventId,
      String title,
      String catchKey,
      String description,
      String eventUrl,
      String startedAt,
      int limit,
      String hashTag,
      String eventType,
      int accepted,
      int waiting,
      String updatedAt,
      int ownerId,
      String ownerNickname,
      String ownerDisplayName,
      String place,
      String address,
      String lat,
      String lon,
      EventSeries? series});

  $EventSeriesCopyWith<$Res>? get series;
}

/// @nodoc
class _$ConnpassEventCopyWithImpl<$Res>
    implements $ConnpassEventCopyWith<$Res> {
  _$ConnpassEventCopyWithImpl(this._value, this._then);

  final ConnpassEvent _value;
  // ignore: unused_field
  final $Res Function(ConnpassEvent) _then;

  @override
  $Res call({
    Object? isExpanded = freezed,
    Object? eventId = freezed,
    Object? title = freezed,
    Object? catchKey = freezed,
    Object? description = freezed,
    Object? eventUrl = freezed,
    Object? startedAt = freezed,
    Object? limit = freezed,
    Object? hashTag = freezed,
    Object? eventType = freezed,
    Object? accepted = freezed,
    Object? waiting = freezed,
    Object? updatedAt = freezed,
    Object? ownerId = freezed,
    Object? ownerNickname = freezed,
    Object? ownerDisplayName = freezed,
    Object? place = freezed,
    Object? address = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? series = freezed,
  }) {
    return _then(_value.copyWith(
      isExpanded: isExpanded == freezed
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      catchKey: catchKey == freezed
          ? _value.catchKey
          : catchKey // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      eventUrl: eventUrl == freezed
          ? _value.eventUrl
          : eventUrl // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      hashTag: hashTag == freezed
          ? _value.hashTag
          : hashTag // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: eventType == freezed
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      accepted: accepted == freezed
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as int,
      waiting: waiting == freezed
          ? _value.waiting
          : waiting // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      ownerNickname: ownerNickname == freezed
          ? _value.ownerNickname
          : ownerNickname // ignore: cast_nullable_to_non_nullable
              as String,
      ownerDisplayName: ownerDisplayName == freezed
          ? _value.ownerDisplayName
          : ownerDisplayName // ignore: cast_nullable_to_non_nullable
              as String,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as EventSeries?,
    ));
  }

  @override
  $EventSeriesCopyWith<$Res>? get series {
    if (_value.series == null) {
      return null;
    }

    return $EventSeriesCopyWith<$Res>(_value.series!, (value) {
      return _then(_value.copyWith(series: value));
    });
  }
}

/// @nodoc
abstract class _$$_ConnpassEventCopyWith<$Res>
    implements $ConnpassEventCopyWith<$Res> {
  factory _$$_ConnpassEventCopyWith(
          _$_ConnpassEvent value, $Res Function(_$_ConnpassEvent) then) =
      __$$_ConnpassEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isExpanded,
      int eventId,
      String title,
      String catchKey,
      String description,
      String eventUrl,
      String startedAt,
      int limit,
      String hashTag,
      String eventType,
      int accepted,
      int waiting,
      String updatedAt,
      int ownerId,
      String ownerNickname,
      String ownerDisplayName,
      String place,
      String address,
      String lat,
      String lon,
      EventSeries? series});

  @override
  $EventSeriesCopyWith<$Res>? get series;
}

/// @nodoc
class __$$_ConnpassEventCopyWithImpl<$Res>
    extends _$ConnpassEventCopyWithImpl<$Res>
    implements _$$_ConnpassEventCopyWith<$Res> {
  __$$_ConnpassEventCopyWithImpl(
      _$_ConnpassEvent _value, $Res Function(_$_ConnpassEvent) _then)
      : super(_value, (v) => _then(v as _$_ConnpassEvent));

  @override
  _$_ConnpassEvent get _value => super._value as _$_ConnpassEvent;

  @override
  $Res call({
    Object? isExpanded = freezed,
    Object? eventId = freezed,
    Object? title = freezed,
    Object? catchKey = freezed,
    Object? description = freezed,
    Object? eventUrl = freezed,
    Object? startedAt = freezed,
    Object? limit = freezed,
    Object? hashTag = freezed,
    Object? eventType = freezed,
    Object? accepted = freezed,
    Object? waiting = freezed,
    Object? updatedAt = freezed,
    Object? ownerId = freezed,
    Object? ownerNickname = freezed,
    Object? ownerDisplayName = freezed,
    Object? place = freezed,
    Object? address = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? series = freezed,
  }) {
    return _then(_$_ConnpassEvent(
      isExpanded: isExpanded == freezed
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      catchKey: catchKey == freezed
          ? _value.catchKey
          : catchKey // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      eventUrl: eventUrl == freezed
          ? _value.eventUrl
          : eventUrl // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: startedAt == freezed
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      hashTag: hashTag == freezed
          ? _value.hashTag
          : hashTag // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: eventType == freezed
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      accepted: accepted == freezed
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as int,
      waiting: waiting == freezed
          ? _value.waiting
          : waiting // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      ownerNickname: ownerNickname == freezed
          ? _value.ownerNickname
          : ownerNickname // ignore: cast_nullable_to_non_nullable
              as String,
      ownerDisplayName: ownerDisplayName == freezed
          ? _value.ownerDisplayName
          : ownerDisplayName // ignore: cast_nullable_to_non_nullable
              as String,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
      series: series == freezed
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as EventSeries?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConnpassEvent implements _ConnpassEvent {
  _$_ConnpassEvent(
      {this.isExpanded = false,
      this.eventId = 0,
      this.title = '',
      this.catchKey = '',
      this.description = '',
      this.eventUrl = '',
      this.startedAt = '',
      this.limit = 0,
      this.hashTag = '',
      this.eventType = '',
      this.accepted = 0,
      this.waiting = 0,
      this.updatedAt = '',
      this.ownerId = 0,
      this.ownerNickname = '',
      this.ownerDisplayName = '',
      this.place = '',
      this.address = '',
      this.lat = '',
      this.lon = '',
      this.series});

  factory _$_ConnpassEvent.fromJson(Map<String, dynamic> json) =>
      _$$_ConnpassEventFromJson(json);

  @override
  @JsonKey()
  final bool isExpanded;
  @override
  @JsonKey()
  final int eventId;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String catchKey;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String eventUrl;
  @override
  @JsonKey()
  final String startedAt;
  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey()
  final String hashTag;
  @override
  @JsonKey()
  final String eventType;
  @override
  @JsonKey()
  final int accepted;
  @override
  @JsonKey()
  final int waiting;
  @override
  @JsonKey()
  final String updatedAt;
  @override
  @JsonKey()
  final int ownerId;
  @override
  @JsonKey()
  final String ownerNickname;
  @override
  @JsonKey()
  final String ownerDisplayName;
  @override
  @JsonKey()
  final String place;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final String lat;
  @override
  @JsonKey()
  final String lon;
  @override
  final EventSeries? series;

  @override
  String toString() {
    return 'ConnpassEvent(isExpanded: $isExpanded, eventId: $eventId, title: $title, catchKey: $catchKey, description: $description, eventUrl: $eventUrl, startedAt: $startedAt, limit: $limit, hashTag: $hashTag, eventType: $eventType, accepted: $accepted, waiting: $waiting, updatedAt: $updatedAt, ownerId: $ownerId, ownerNickname: $ownerNickname, ownerDisplayName: $ownerDisplayName, place: $place, address: $address, lat: $lat, lon: $lon, series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnpassEvent &&
            const DeepCollectionEquality()
                .equals(other.isExpanded, isExpanded) &&
            const DeepCollectionEquality().equals(other.eventId, eventId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.catchKey, catchKey) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.eventUrl, eventUrl) &&
            const DeepCollectionEquality().equals(other.startedAt, startedAt) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.hashTag, hashTag) &&
            const DeepCollectionEquality().equals(other.eventType, eventType) &&
            const DeepCollectionEquality().equals(other.accepted, accepted) &&
            const DeepCollectionEquality().equals(other.waiting, waiting) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality()
                .equals(other.ownerNickname, ownerNickname) &&
            const DeepCollectionEquality()
                .equals(other.ownerDisplayName, ownerDisplayName) &&
            const DeepCollectionEquality().equals(other.place, place) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon) &&
            const DeepCollectionEquality().equals(other.series, series));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(isExpanded),
        const DeepCollectionEquality().hash(eventId),
        const DeepCollectionEquality().hash(title),
        const DeepCollectionEquality().hash(catchKey),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(eventUrl),
        const DeepCollectionEquality().hash(startedAt),
        const DeepCollectionEquality().hash(limit),
        const DeepCollectionEquality().hash(hashTag),
        const DeepCollectionEquality().hash(eventType),
        const DeepCollectionEquality().hash(accepted),
        const DeepCollectionEquality().hash(waiting),
        const DeepCollectionEquality().hash(updatedAt),
        const DeepCollectionEquality().hash(ownerId),
        const DeepCollectionEquality().hash(ownerNickname),
        const DeepCollectionEquality().hash(ownerDisplayName),
        const DeepCollectionEquality().hash(place),
        const DeepCollectionEquality().hash(address),
        const DeepCollectionEquality().hash(lat),
        const DeepCollectionEquality().hash(lon),
        const DeepCollectionEquality().hash(series)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_ConnpassEventCopyWith<_$_ConnpassEvent> get copyWith =>
      __$$_ConnpassEventCopyWithImpl<_$_ConnpassEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConnpassEventToJson(this);
  }
}

abstract class _ConnpassEvent implements ConnpassEvent {
  factory _ConnpassEvent(
      {final bool isExpanded,
      final int eventId,
      final String title,
      final String catchKey,
      final String description,
      final String eventUrl,
      final String startedAt,
      final int limit,
      final String hashTag,
      final String eventType,
      final int accepted,
      final int waiting,
      final String updatedAt,
      final int ownerId,
      final String ownerNickname,
      final String ownerDisplayName,
      final String place,
      final String address,
      final String lat,
      final String lon,
      final EventSeries? series}) = _$_ConnpassEvent;

  factory _ConnpassEvent.fromJson(Map<String, dynamic> json) =
      _$_ConnpassEvent.fromJson;

  @override
  bool get isExpanded => throw _privateConstructorUsedError;
  @override
  int get eventId => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get catchKey => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get eventUrl => throw _privateConstructorUsedError;
  @override
  String get startedAt => throw _privateConstructorUsedError;
  @override
  int get limit => throw _privateConstructorUsedError;
  @override
  String get hashTag => throw _privateConstructorUsedError;
  @override
  String get eventType => throw _privateConstructorUsedError;
  @override
  int get accepted => throw _privateConstructorUsedError;
  @override
  int get waiting => throw _privateConstructorUsedError;
  @override
  String get updatedAt => throw _privateConstructorUsedError;
  @override
  int get ownerId => throw _privateConstructorUsedError;
  @override
  String get ownerNickname => throw _privateConstructorUsedError;
  @override
  String get ownerDisplayName => throw _privateConstructorUsedError;
  @override
  String get place => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  String get lat => throw _privateConstructorUsedError;
  @override
  String get lon => throw _privateConstructorUsedError;
  @override
  EventSeries? get series => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ConnpassEventCopyWith<_$_ConnpassEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

EventSeries _$EventSeriesFromJson(Map<String, dynamic> json) {
  return _EventSeries.fromJson(json);
}

/// @nodoc
mixin _$EventSeries {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventSeriesCopyWith<EventSeries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventSeriesCopyWith<$Res> {
  factory $EventSeriesCopyWith(
          EventSeries value, $Res Function(EventSeries) then) =
      _$EventSeriesCopyWithImpl<$Res>;
  $Res call({int id, String title, String url});
}

/// @nodoc
class _$EventSeriesCopyWithImpl<$Res> implements $EventSeriesCopyWith<$Res> {
  _$EventSeriesCopyWithImpl(this._value, this._then);

  final EventSeries _value;
  // ignore: unused_field
  final $Res Function(EventSeries) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_EventSeriesCopyWith<$Res>
    implements $EventSeriesCopyWith<$Res> {
  factory _$$_EventSeriesCopyWith(
          _$_EventSeries value, $Res Function(_$_EventSeries) then) =
      __$$_EventSeriesCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, String url});
}

/// @nodoc
class __$$_EventSeriesCopyWithImpl<$Res> extends _$EventSeriesCopyWithImpl<$Res>
    implements _$$_EventSeriesCopyWith<$Res> {
  __$$_EventSeriesCopyWithImpl(
      _$_EventSeries _value, $Res Function(_$_EventSeries) _then)
      : super(_value, (v) => _then(v as _$_EventSeries));

  @override
  _$_EventSeries get _value => super._value as _$_EventSeries;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_EventSeries(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventSeries implements _EventSeries {
  _$_EventSeries({this.id = 0, this.title = '', this.url = ''});

  factory _$_EventSeries.fromJson(Map<String, dynamic> json) =>
      _$$_EventSeriesFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String url;

  @override
  String toString() {
    return 'EventSeries(id: $id, title: $title, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventSeries &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_EventSeriesCopyWith<_$_EventSeries> get copyWith =>
      __$$_EventSeriesCopyWithImpl<_$_EventSeries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventSeriesToJson(this);
  }
}

abstract class _EventSeries implements EventSeries {
  factory _EventSeries({final int id, final String title, final String url}) =
      _$_EventSeries;

  factory _EventSeries.fromJson(Map<String, dynamic> json) =
      _$_EventSeries.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EventSeriesCopyWith<_$_EventSeries> get copyWith =>
      throw _privateConstructorUsedError;
}
