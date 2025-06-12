// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_shortest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserShortest {

 String get id; String get username; String get email; String? get bio; String get collectionId; String get collectionName; bool? get verified; bool? get popular; bool get emailVisibility; String? get avatar; String? get banner; DateTime? get birthDate; String? get phoneNumber; String? get gender; String? get address; List<String>? get friendsRequest; List<String>? get followings; List<String>? get followers; DateTime get created; DateTime get updated; List<String>? get interests; List<String>? get likedPosts; List<String>? get viewedPosts; List<String>? get savedPosts;
/// Create a copy of UserShortest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserShortestCopyWith<UserShortest> get copyWith => _$UserShortestCopyWithImpl<UserShortest>(this as UserShortest, _$identity);

  /// Serializes this UserShortest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserShortest&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.popular, popular) || other.popular == popular)&&(identical(other.emailVisibility, emailVisibility) || other.emailVisibility == emailVisibility)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.friendsRequest, friendsRequest)&&const DeepCollectionEquality().equals(other.followings, followings)&&const DeepCollectionEquality().equals(other.followers, followers)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&const DeepCollectionEquality().equals(other.interests, interests)&&const DeepCollectionEquality().equals(other.likedPosts, likedPosts)&&const DeepCollectionEquality().equals(other.viewedPosts, viewedPosts)&&const DeepCollectionEquality().equals(other.savedPosts, savedPosts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,username,email,bio,collectionId,collectionName,verified,popular,emailVisibility,avatar,banner,birthDate,phoneNumber,gender,address,const DeepCollectionEquality().hash(friendsRequest),const DeepCollectionEquality().hash(followings),const DeepCollectionEquality().hash(followers),created,updated,const DeepCollectionEquality().hash(interests),const DeepCollectionEquality().hash(likedPosts),const DeepCollectionEquality().hash(viewedPosts),const DeepCollectionEquality().hash(savedPosts)]);

@override
String toString() {
  return 'UserShortest(id: $id, username: $username, email: $email, bio: $bio, collectionId: $collectionId, collectionName: $collectionName, verified: $verified, popular: $popular, emailVisibility: $emailVisibility, avatar: $avatar, banner: $banner, birthDate: $birthDate, phoneNumber: $phoneNumber, gender: $gender, address: $address, friendsRequest: $friendsRequest, followings: $followings, followers: $followers, created: $created, updated: $updated, interests: $interests, likedPosts: $likedPosts, viewedPosts: $viewedPosts, savedPosts: $savedPosts)';
}


}

/// @nodoc
abstract mixin class $UserShortestCopyWith<$Res>  {
  factory $UserShortestCopyWith(UserShortest value, $Res Function(UserShortest) _then) = _$UserShortestCopyWithImpl;
@useResult
$Res call({
 String id, String username, String email, String? bio, String collectionId, String collectionName, bool? verified, bool? popular, bool emailVisibility, String? avatar, String? banner, DateTime? birthDate, String? phoneNumber, String? gender, String? address, List<String>? friendsRequest, List<String>? followings, List<String>? followers, DateTime created, DateTime updated, List<String>? interests, List<String>? likedPosts, List<String>? viewedPosts, List<String>? savedPosts
});




}
/// @nodoc
class _$UserShortestCopyWithImpl<$Res>
    implements $UserShortestCopyWith<$Res> {
  _$UserShortestCopyWithImpl(this._self, this._then);

  final UserShortest _self;
  final $Res Function(UserShortest) _then;

/// Create a copy of UserShortest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = null,Object? email = null,Object? bio = freezed,Object? collectionId = null,Object? collectionName = null,Object? verified = freezed,Object? popular = freezed,Object? emailVisibility = null,Object? avatar = freezed,Object? banner = freezed,Object? birthDate = freezed,Object? phoneNumber = freezed,Object? gender = freezed,Object? address = freezed,Object? friendsRequest = freezed,Object? followings = freezed,Object? followers = freezed,Object? created = null,Object? updated = null,Object? interests = freezed,Object? likedPosts = freezed,Object? viewedPosts = freezed,Object? savedPosts = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,verified: freezed == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool?,popular: freezed == popular ? _self.popular : popular // ignore: cast_nullable_to_non_nullable
as bool?,emailVisibility: null == emailVisibility ? _self.emailVisibility : emailVisibility // ignore: cast_nullable_to_non_nullable
as bool,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as DateTime?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,friendsRequest: freezed == friendsRequest ? _self.friendsRequest : friendsRequest // ignore: cast_nullable_to_non_nullable
as List<String>?,followings: freezed == followings ? _self.followings : followings // ignore: cast_nullable_to_non_nullable
as List<String>?,followers: freezed == followers ? _self.followers : followers // ignore: cast_nullable_to_non_nullable
as List<String>?,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime,interests: freezed == interests ? _self.interests : interests // ignore: cast_nullable_to_non_nullable
as List<String>?,likedPosts: freezed == likedPosts ? _self.likedPosts : likedPosts // ignore: cast_nullable_to_non_nullable
as List<String>?,viewedPosts: freezed == viewedPosts ? _self.viewedPosts : viewedPosts // ignore: cast_nullable_to_non_nullable
as List<String>?,savedPosts: freezed == savedPosts ? _self.savedPosts : savedPosts // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UserShortest extends UserShortest {
  const _UserShortest({required this.id, required this.username, required this.email, this.bio, required this.collectionId, required this.collectionName, this.verified, this.popular, required this.emailVisibility, this.avatar, this.banner, this.birthDate, this.phoneNumber, this.gender, this.address, final  List<String>? friendsRequest, final  List<String>? followings, final  List<String>? followers, required this.created, required this.updated, final  List<String>? interests, final  List<String>? likedPosts, final  List<String>? viewedPosts, final  List<String>? savedPosts}): _friendsRequest = friendsRequest,_followings = followings,_followers = followers,_interests = interests,_likedPosts = likedPosts,_viewedPosts = viewedPosts,_savedPosts = savedPosts,super._();
  factory _UserShortest.fromJson(Map<String, dynamic> json) => _$UserShortestFromJson(json);

@override final  String id;
@override final  String username;
@override final  String email;
@override final  String? bio;
@override final  String collectionId;
@override final  String collectionName;
@override final  bool? verified;
@override final  bool? popular;
@override final  bool emailVisibility;
@override final  String? avatar;
@override final  String? banner;
@override final  DateTime? birthDate;
@override final  String? phoneNumber;
@override final  String? gender;
@override final  String? address;
 final  List<String>? _friendsRequest;
@override List<String>? get friendsRequest {
  final value = _friendsRequest;
  if (value == null) return null;
  if (_friendsRequest is EqualUnmodifiableListView) return _friendsRequest;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _followings;
@override List<String>? get followings {
  final value = _followings;
  if (value == null) return null;
  if (_followings is EqualUnmodifiableListView) return _followings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _followers;
@override List<String>? get followers {
  final value = _followers;
  if (value == null) return null;
  if (_followers is EqualUnmodifiableListView) return _followers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime created;
@override final  DateTime updated;
 final  List<String>? _interests;
@override List<String>? get interests {
  final value = _interests;
  if (value == null) return null;
  if (_interests is EqualUnmodifiableListView) return _interests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _likedPosts;
@override List<String>? get likedPosts {
  final value = _likedPosts;
  if (value == null) return null;
  if (_likedPosts is EqualUnmodifiableListView) return _likedPosts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _viewedPosts;
@override List<String>? get viewedPosts {
  final value = _viewedPosts;
  if (value == null) return null;
  if (_viewedPosts is EqualUnmodifiableListView) return _viewedPosts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _savedPosts;
@override List<String>? get savedPosts {
  final value = _savedPosts;
  if (value == null) return null;
  if (_savedPosts is EqualUnmodifiableListView) return _savedPosts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of UserShortest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserShortestCopyWith<_UserShortest> get copyWith => __$UserShortestCopyWithImpl<_UserShortest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserShortestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserShortest&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.popular, popular) || other.popular == popular)&&(identical(other.emailVisibility, emailVisibility) || other.emailVisibility == emailVisibility)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other._friendsRequest, _friendsRequest)&&const DeepCollectionEquality().equals(other._followings, _followings)&&const DeepCollectionEquality().equals(other._followers, _followers)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&const DeepCollectionEquality().equals(other._interests, _interests)&&const DeepCollectionEquality().equals(other._likedPosts, _likedPosts)&&const DeepCollectionEquality().equals(other._viewedPosts, _viewedPosts)&&const DeepCollectionEquality().equals(other._savedPosts, _savedPosts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,username,email,bio,collectionId,collectionName,verified,popular,emailVisibility,avatar,banner,birthDate,phoneNumber,gender,address,const DeepCollectionEquality().hash(_friendsRequest),const DeepCollectionEquality().hash(_followings),const DeepCollectionEquality().hash(_followers),created,updated,const DeepCollectionEquality().hash(_interests),const DeepCollectionEquality().hash(_likedPosts),const DeepCollectionEquality().hash(_viewedPosts),const DeepCollectionEquality().hash(_savedPosts)]);

@override
String toString() {
  return 'UserShortest(id: $id, username: $username, email: $email, bio: $bio, collectionId: $collectionId, collectionName: $collectionName, verified: $verified, popular: $popular, emailVisibility: $emailVisibility, avatar: $avatar, banner: $banner, birthDate: $birthDate, phoneNumber: $phoneNumber, gender: $gender, address: $address, friendsRequest: $friendsRequest, followings: $followings, followers: $followers, created: $created, updated: $updated, interests: $interests, likedPosts: $likedPosts, viewedPosts: $viewedPosts, savedPosts: $savedPosts)';
}


}

/// @nodoc
abstract mixin class _$UserShortestCopyWith<$Res> implements $UserShortestCopyWith<$Res> {
  factory _$UserShortestCopyWith(_UserShortest value, $Res Function(_UserShortest) _then) = __$UserShortestCopyWithImpl;
@override @useResult
$Res call({
 String id, String username, String email, String? bio, String collectionId, String collectionName, bool? verified, bool? popular, bool emailVisibility, String? avatar, String? banner, DateTime? birthDate, String? phoneNumber, String? gender, String? address, List<String>? friendsRequest, List<String>? followings, List<String>? followers, DateTime created, DateTime updated, List<String>? interests, List<String>? likedPosts, List<String>? viewedPosts, List<String>? savedPosts
});




}
/// @nodoc
class __$UserShortestCopyWithImpl<$Res>
    implements _$UserShortestCopyWith<$Res> {
  __$UserShortestCopyWithImpl(this._self, this._then);

  final _UserShortest _self;
  final $Res Function(_UserShortest) _then;

/// Create a copy of UserShortest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? email = null,Object? bio = freezed,Object? collectionId = null,Object? collectionName = null,Object? verified = freezed,Object? popular = freezed,Object? emailVisibility = null,Object? avatar = freezed,Object? banner = freezed,Object? birthDate = freezed,Object? phoneNumber = freezed,Object? gender = freezed,Object? address = freezed,Object? friendsRequest = freezed,Object? followings = freezed,Object? followers = freezed,Object? created = null,Object? updated = null,Object? interests = freezed,Object? likedPosts = freezed,Object? viewedPosts = freezed,Object? savedPosts = freezed,}) {
  return _then(_UserShortest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,verified: freezed == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool?,popular: freezed == popular ? _self.popular : popular // ignore: cast_nullable_to_non_nullable
as bool?,emailVisibility: null == emailVisibility ? _self.emailVisibility : emailVisibility // ignore: cast_nullable_to_non_nullable
as bool,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as DateTime?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,friendsRequest: freezed == friendsRequest ? _self._friendsRequest : friendsRequest // ignore: cast_nullable_to_non_nullable
as List<String>?,followings: freezed == followings ? _self._followings : followings // ignore: cast_nullable_to_non_nullable
as List<String>?,followers: freezed == followers ? _self._followers : followers // ignore: cast_nullable_to_non_nullable
as List<String>?,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime,interests: freezed == interests ? _self._interests : interests // ignore: cast_nullable_to_non_nullable
as List<String>?,likedPosts: freezed == likedPosts ? _self._likedPosts : likedPosts // ignore: cast_nullable_to_non_nullable
as List<String>?,viewedPosts: freezed == viewedPosts ? _self._viewedPosts : viewedPosts // ignore: cast_nullable_to_non_nullable
as List<String>?,savedPosts: freezed == savedPosts ? _self._savedPosts : savedPosts // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
