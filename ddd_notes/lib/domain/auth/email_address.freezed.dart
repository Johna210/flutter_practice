// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueFailure<T> {

 required get failedValue => throw _privateConstructorUsedError;
@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( required failedValue)  invalidEmail,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( required failedValue)?  invalidEmail,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( required failedValue)?  invalidEmail,required TResult orElse(),}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InvalidEmail<T> value)  invalidEmail,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InvalidEmail<T> value)?  invalidEmail,}) => throw _privateConstructorUsedError;
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InvalidEmail<T> value)?  invalidEmail,required TResult orElse(),}) => throw _privateConstructorUsedError;

@JsonKey(ignore: true)
$ValueFailureCopyWith<T, ValueFailure<T>> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ValueFailureCopyWith<T,$Res>  {
  factory $ValueFailureCopyWith(ValueFailure<T> value, $Res Function(ValueFailure<T>) then) = _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
@useResult
$Res call({
 required failedValue
});



}

/// @nodoc
class _$ValueFailureCopyWithImpl<T,$Res,$Val extends ValueFailure<T>> implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@pragma('vm:prefer-inline') @override $Res call({Object? failedValue = freezed,}) {
  return _then(_value.copyWith(
failedValue: freezed == failedValue ? _value.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as required,
  )as $Val);
}

}


/// @nodoc
abstract class _$$InvalidEmailImplCopyWith<T,$Res> implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidEmailImplCopyWith(_$InvalidEmailImpl<T> value, $Res Function(_$InvalidEmailImpl<T>) then) = __$$InvalidEmailImplCopyWithImpl<T, $Res>;
@override @useResult
$Res call({
 required failedValue
});



}

/// @nodoc
class __$$InvalidEmailImplCopyWithImpl<T,$Res> extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidEmailImpl<T>> implements _$$InvalidEmailImplCopyWith<T, $Res> {
  __$$InvalidEmailImplCopyWithImpl(_$InvalidEmailImpl<T> _value, $Res Function(_$InvalidEmailImpl<T>) _then)
      : super(_value, _then);


@pragma('vm:prefer-inline') @override $Res call({Object? failedValue = freezed,}) {
  return _then(_$InvalidEmailImpl<T>(
failedValue: freezed == failedValue ? _value.failedValue : failedValue // ignore: cast_nullable_to_non_nullable
as required,
  ));
}


}

/// @nodoc


class _$InvalidEmailImpl<T>  with DiagnosticableTreeMixin implements InvalidEmail<T> {
  const _$InvalidEmailImpl({this.failedValue});

  

@override final  required failedValue;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
}

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  super.debugFillProperties(properties);
  properties
    ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidEmail'))
    ..add(DiagnosticsProperty('failedValue', failedValue));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _$InvalidEmailImpl<T>&&const DeepCollectionEquality().equals(other.failedValue, failedValue));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(failedValue));

@JsonKey(ignore: true)
@override
@pragma('vm:prefer-inline')
_$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith => __$$InvalidEmailImplCopyWithImpl<T, _$InvalidEmailImpl<T>>(this, _$identity);

@override
@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( required failedValue)  invalidEmail,}) {
  return invalidEmail(failedValue);
}
@override
@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( required failedValue)?  invalidEmail,}) {
  return invalidEmail?.call(failedValue);
}
@override
@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( required failedValue)?  invalidEmail,required TResult orElse(),}) {
  if (invalidEmail != null) {
    return invalidEmail(failedValue);
  }
  return orElse();
}
@override
@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InvalidEmail<T> value)  invalidEmail,}) {
  return invalidEmail(this);
}
@override
@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InvalidEmail<T> value)?  invalidEmail,}) {
  return invalidEmail?.call(this);
}
@override
@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InvalidEmail<T> value)?  invalidEmail,required TResult orElse(),}) {
  if (invalidEmail != null) {
    return invalidEmail(this);
  }
  return orElse();
}

}


abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({final  required failedValue}) = _$InvalidEmailImpl<T>;
  

  

@override  required get failedValue;
@override @JsonKey(ignore: true)
_$$InvalidEmailImplCopyWith<T, _$InvalidEmailImpl<T>> get copyWith => throw _privateConstructorUsedError;

}
