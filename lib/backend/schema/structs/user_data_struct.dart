// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDataStruct extends BaseStruct {
  UserDataStruct({
    int? customerId,
    String? createdAt,
    String? firstName,
    String? lastName,
    String? status,
    String? email,
    String? mobilePhone,
    String? authId,
  })  : _customerId = customerId,
        _createdAt = createdAt,
        _firstName = firstName,
        _lastName = lastName,
        _status = status,
        _email = email,
        _mobilePhone = mobilePhone,
        _authId = authId;

  // "customer_id" field.
  int? _customerId;
  int get customerId => _customerId ?? 0;
  set customerId(int? val) => _customerId = val;

  void incrementCustomerId(int amount) => customerId = customerId + amount;

  bool hasCustomerId() => _customerId != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;

  bool hasLastName() => _lastName != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "mobile_phone" field.
  String? _mobilePhone;
  String get mobilePhone => _mobilePhone ?? '';
  set mobilePhone(String? val) => _mobilePhone = val;

  bool hasMobilePhone() => _mobilePhone != null;

  // "auth_id" field.
  String? _authId;
  String get authId => _authId ?? '';
  set authId(String? val) => _authId = val;

  bool hasAuthId() => _authId != null;

  static UserDataStruct fromMap(Map<String, dynamic> data) => UserDataStruct(
        customerId: castToType<int>(data['customer_id']),
        createdAt: data['created_at'] as String?,
        firstName: data['first_name'] as String?,
        lastName: data['last_name'] as String?,
        status: data['status'] as String?,
        email: data['email'] as String?,
        mobilePhone: data['mobile_phone'] as String?,
        authId: data['auth_id'] as String?,
      );

  static UserDataStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserDataStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'customer_id': _customerId,
        'created_at': _createdAt,
        'first_name': _firstName,
        'last_name': _lastName,
        'status': _status,
        'email': _email,
        'mobile_phone': _mobilePhone,
        'auth_id': _authId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'customer_id': serializeParam(
          _customerId,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'first_name': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'last_name': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'mobile_phone': serializeParam(
          _mobilePhone,
          ParamType.String,
        ),
        'auth_id': serializeParam(
          _authId,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserDataStruct(
        customerId: deserializeParam(
          data['customer_id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['first_name'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['last_name'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        mobilePhone: deserializeParam(
          data['mobile_phone'],
          ParamType.String,
          false,
        ),
        authId: deserializeParam(
          data['auth_id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserDataStruct &&
        customerId == other.customerId &&
        createdAt == other.createdAt &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        status == other.status &&
        email == other.email &&
        mobilePhone == other.mobilePhone &&
        authId == other.authId;
  }

  @override
  int get hashCode => const ListEquality().hash([
        customerId,
        createdAt,
        firstName,
        lastName,
        status,
        email,
        mobilePhone,
        authId
      ]);
}

UserDataStruct createUserDataStruct({
  int? customerId,
  String? createdAt,
  String? firstName,
  String? lastName,
  String? status,
  String? email,
  String? mobilePhone,
  String? authId,
}) =>
    UserDataStruct(
      customerId: customerId,
      createdAt: createdAt,
      firstName: firstName,
      lastName: lastName,
      status: status,
      email: email,
      mobilePhone: mobilePhone,
      authId: authId,
    );
