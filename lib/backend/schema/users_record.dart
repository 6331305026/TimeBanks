import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "studentID" field.
  int? _studentID;
  int get studentID => _studentID ?? 0;
  bool hasStudentID() => _studentID != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "school_of" field.
  String? _schoolOf;
  String get schoolOf => _schoolOf ?? '';
  bool hasSchoolOf() => _schoolOf != null;

  // "major_of" field.
  String? _majorOf;
  String get majorOf => _majorOf ?? '';
  bool hasMajorOf() => _majorOf != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _studentID = castToType<int>(snapshotData['studentID']);
    _phoneNumber = snapshotData['phone_number'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _schoolOf = snapshotData['school_of'] as String?;
    _majorOf = snapshotData['major_of'] as String?;
    _uid = snapshotData['uid'] as String?;
    _displayName = snapshotData['display_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? firstName,
  String? lastName,
  int? studentID,
  String? phoneNumber,
  String? photoUrl,
  DateTime? createdTime,
  String? schoolOf,
  String? majorOf,
  String? uid,
  String? displayName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'first_name': firstName,
      'last_name': lastName,
      'studentID': studentID,
      'phone_number': phoneNumber,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'school_of': schoolOf,
      'major_of': majorOf,
      'uid': uid,
      'display_name': displayName,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.studentID == e2?.studentID &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.schoolOf == e2?.schoolOf &&
        e1?.majorOf == e2?.majorOf &&
        e1?.uid == e2?.uid &&
        e1?.displayName == e2?.displayName;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.firstName,
        e?.lastName,
        e?.studentID,
        e?.phoneNumber,
        e?.photoUrl,
        e?.createdTime,
        e?.schoolOf,
        e?.majorOf,
        e?.uid,
        e?.displayName
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
