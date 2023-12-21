import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequestRecord extends FirestoreRecord {
  RequestRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "request_name" field.
  String? _requestName;
  String get requestName => _requestName ?? '';
  bool hasRequestName() => _requestName != null;

  // "request_appoint_date" field.
  DateTime? _requestAppointDate;
  DateTime? get requestAppointDate => _requestAppointDate;
  bool hasRequestAppointDate() => _requestAppointDate != null;

  // "request_description" field.
  String? _requestDescription;
  String get requestDescription => _requestDescription ?? '';
  bool hasRequestDescription() => _requestDescription != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "give_TC" field.
  int? _giveTC;
  int get giveTC => _giveTC ?? 0;
  bool hasGiveTC() => _giveTC != null;

  // "location" field.
  List<String>? _location;
  List<String> get location => _location ?? const [];
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _requestName = snapshotData['request_name'] as String?;
    _requestAppointDate = snapshotData['request_appoint_date'] as DateTime?;
    _requestDescription = snapshotData['request_description'] as String?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _giveTC = castToType<int>(snapshotData['give_TC']);
    _location = getDataList(snapshotData['location']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('request');

  static Stream<RequestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RequestRecord.fromSnapshot(s));

  static Future<RequestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RequestRecord.fromSnapshot(s));

  static RequestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RequestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RequestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RequestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RequestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RequestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRequestRecordData({
  String? requestName,
  DateTime? requestAppointDate,
  String? requestDescription,
  DocumentReference? userRef,
  int? giveTC,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'request_name': requestName,
      'request_appoint_date': requestAppointDate,
      'request_description': requestDescription,
      'user_ref': userRef,
      'give_TC': giveTC,
    }.withoutNulls,
  );

  return firestoreData;
}

class RequestRecordDocumentEquality implements Equality<RequestRecord> {
  const RequestRecordDocumentEquality();

  @override
  bool equals(RequestRecord? e1, RequestRecord? e2) {
    const listEquality = ListEquality();
    return e1?.requestName == e2?.requestName &&
        e1?.requestAppointDate == e2?.requestAppointDate &&
        e1?.requestDescription == e2?.requestDescription &&
        e1?.userRef == e2?.userRef &&
        e1?.giveTC == e2?.giveTC &&
        listEquality.equals(e1?.location, e2?.location);
  }

  @override
  int hash(RequestRecord? e) => const ListEquality().hash([
        e?.requestName,
        e?.requestAppointDate,
        e?.requestDescription,
        e?.userRef,
        e?.giveTC,
        e?.location
      ]);

  @override
  bool isValidKey(Object? o) => o is RequestRecord;
}
