// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Serializes this ConnpassEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConnpassEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConnpassEventCopyWith<ConnpassEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnpassEventCopyWith<$Res> {
  factory $ConnpassEventCopyWith(
          ConnpassEvent value, $Res Function(ConnpassEvent) then) =
      _$ConnpassEventCopyWithImpl<$Res, ConnpassEvent>;
  @useResult
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
class _$ConnpassEventCopyWithImpl<$Res, $Val extends ConnpassEvent>
    implements $ConnpassEventCopyWith<$Res> {
  _$ConnpassEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConnpassEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExpanded = null,
    Object? eventId = null,
    Object? title = null,
    Object? catchKey = null,
    Object? description = null,
    Object? eventUrl = null,
    Object? startedAt = null,
    Object? limit = null,
    Object? hashTag = null,
    Object? eventType = null,
    Object? accepted = null,
    Object? waiting = null,
    Object? updatedAt = null,
    Object? ownerId = null,
    Object? ownerNickname = null,
    Object? ownerDisplayName = null,
    Object? place = null,
    Object? address = null,
    Object? lat = null,
    Object? lon = null,
    Object? series = freezed,
  }) {
    return _then(_value.copyWith(
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      catchKey: null == catchKey
          ? _value.catchKey
          : catchKey // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      eventUrl: null == eventUrl
          ? _value.eventUrl
          : eventUrl // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      hashTag: null == hashTag
          ? _value.hashTag
          : hashTag // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      accepted: null == accepted
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as int,
      waiting: null == waiting
          ? _value.waiting
          : waiting // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      ownerNickname: null == ownerNickname
          ? _value.ownerNickname
          : ownerNickname // ignore: cast_nullable_to_non_nullable
              as String,
      ownerDisplayName: null == ownerDisplayName
          ? _value.ownerDisplayName
          : ownerDisplayName // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as EventSeries?,
    ) as $Val);
  }

  /// Create a copy of ConnpassEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventSeriesCopyWith<$Res>? get series {
    if (_value.series == null) {
      return null;
    }

    return $EventSeriesCopyWith<$Res>(_value.series!, (value) {
      return _then(_value.copyWith(series: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConnpassEventImplCopyWith<$Res>
    implements $ConnpassEventCopyWith<$Res> {
  factory _$$ConnpassEventImplCopyWith(
          _$ConnpassEventImpl value, $Res Function(_$ConnpassEventImpl) then) =
      __$$ConnpassEventImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$ConnpassEventImplCopyWithImpl<$Res>
    extends _$ConnpassEventCopyWithImpl<$Res, _$ConnpassEventImpl>
    implements _$$ConnpassEventImplCopyWith<$Res> {
  __$$ConnpassEventImplCopyWithImpl(
      _$ConnpassEventImpl _value, $Res Function(_$ConnpassEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConnpassEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExpanded = null,
    Object? eventId = null,
    Object? title = null,
    Object? catchKey = null,
    Object? description = null,
    Object? eventUrl = null,
    Object? startedAt = null,
    Object? limit = null,
    Object? hashTag = null,
    Object? eventType = null,
    Object? accepted = null,
    Object? waiting = null,
    Object? updatedAt = null,
    Object? ownerId = null,
    Object? ownerNickname = null,
    Object? ownerDisplayName = null,
    Object? place = null,
    Object? address = null,
    Object? lat = null,
    Object? lon = null,
    Object? series = freezed,
  }) {
    return _then(_$ConnpassEventImpl(
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      catchKey: null == catchKey
          ? _value.catchKey
          : catchKey // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      eventUrl: null == eventUrl
          ? _value.eventUrl
          : eventUrl // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      hashTag: null == hashTag
          ? _value.hashTag
          : hashTag // ignore: cast_nullable_to_non_nullable
              as String,
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      accepted: null == accepted
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as int,
      waiting: null == waiting
          ? _value.waiting
          : waiting // ignore: cast_nullable_to_non_nullable
              as int,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: null == ownerId
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as int,
      ownerNickname: null == ownerNickname
          ? _value.ownerNickname
          : ownerNickname // ignore: cast_nullable_to_non_nullable
              as String,
      ownerDisplayName: null == ownerDisplayName
          ? _value.ownerDisplayName
          : ownerDisplayName // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as EventSeries?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConnpassEventImpl implements _ConnpassEvent {
  _$ConnpassEventImpl(
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

  factory _$ConnpassEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConnpassEventImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnpassEventImpl &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.catchKey, catchKey) ||
                other.catchKey == catchKey) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.eventUrl, eventUrl) ||
                other.eventUrl == eventUrl) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.hashTag, hashTag) || other.hashTag == hashTag) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.accepted, accepted) ||
                other.accepted == accepted) &&
            (identical(other.waiting, waiting) || other.waiting == waiting) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.ownerId, ownerId) || other.ownerId == ownerId) &&
            (identical(other.ownerNickname, ownerNickname) ||
                other.ownerNickname == ownerNickname) &&
            (identical(other.ownerDisplayName, ownerDisplayName) ||
                other.ownerDisplayName == ownerDisplayName) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.series, series) || other.series == series));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isExpanded,
        eventId,
        title,
        catchKey,
        description,
        eventUrl,
        startedAt,
        limit,
        hashTag,
        eventType,
        accepted,
        waiting,
        updatedAt,
        ownerId,
        ownerNickname,
        ownerDisplayName,
        place,
        address,
        lat,
        lon,
        series
      ]);

  /// Create a copy of ConnpassEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnpassEventImplCopyWith<_$ConnpassEventImpl> get copyWith =>
      __$$ConnpassEventImplCopyWithImpl<_$ConnpassEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConnpassEventImplToJson(
      this,
    );
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
      final EventSeries? series}) = _$ConnpassEventImpl;

  factory _ConnpassEvent.fromJson(Map<String, dynamic> json) =
      _$ConnpassEventImpl.fromJson;

  @override
  bool get isExpanded;
  @override
  int get eventId;
  @override
  String get title;
  @override
  String get catchKey;
  @override
  String get description;
  @override
  String get eventUrl;
  @override
  String get startedAt;
  @override
  int get limit;
  @override
  String get hashTag;
  @override
  String get eventType;
  @override
  int get accepted;
  @override
  int get waiting;
  @override
  String get updatedAt;
  @override
  int get ownerId;
  @override
  String get ownerNickname;
  @override
  String get ownerDisplayName;
  @override
  String get place;
  @override
  String get address;
  @override
  String get lat;
  @override
  String get lon;
  @override
  EventSeries? get series;

  /// Create a copy of ConnpassEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnpassEventImplCopyWith<_$ConnpassEventImpl> get copyWith =>
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

  /// Serializes this EventSeries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventSeries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventSeriesCopyWith<EventSeries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventSeriesCopyWith<$Res> {
  factory $EventSeriesCopyWith(
          EventSeries value, $Res Function(EventSeries) then) =
      _$EventSeriesCopyWithImpl<$Res, EventSeries>;
  @useResult
  $Res call({int id, String title, String url});
}

/// @nodoc
class _$EventSeriesCopyWithImpl<$Res, $Val extends EventSeries>
    implements $EventSeriesCopyWith<$Res> {
  _$EventSeriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventSeries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventSeriesImplCopyWith<$Res>
    implements $EventSeriesCopyWith<$Res> {
  factory _$$EventSeriesImplCopyWith(
          _$EventSeriesImpl value, $Res Function(_$EventSeriesImpl) then) =
      __$$EventSeriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String url});
}

/// @nodoc
class __$$EventSeriesImplCopyWithImpl<$Res>
    extends _$EventSeriesCopyWithImpl<$Res, _$EventSeriesImpl>
    implements _$$EventSeriesImplCopyWith<$Res> {
  __$$EventSeriesImplCopyWithImpl(
      _$EventSeriesImpl _value, $Res Function(_$EventSeriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventSeries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_$EventSeriesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventSeriesImpl implements _EventSeries {
  _$EventSeriesImpl({this.id = 0, this.title = '', this.url = ''});

  factory _$EventSeriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventSeriesImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventSeriesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, url);

  /// Create a copy of EventSeries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventSeriesImplCopyWith<_$EventSeriesImpl> get copyWith =>
      __$$EventSeriesImplCopyWithImpl<_$EventSeriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventSeriesImplToJson(
      this,
    );
  }
}

abstract class _EventSeries implements EventSeries {
  factory _EventSeries({final int id, final String title, final String url}) =
      _$EventSeriesImpl;

  factory _EventSeries.fromJson(Map<String, dynamic> json) =
      _$EventSeriesImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get url;

  /// Create a copy of EventSeries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventSeriesImplCopyWith<_$EventSeriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
