import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MissionRecord extends FirestoreRecord {
  MissionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "mission_name" field.
  String? _missionName;
  String get missionName => _missionName ?? '';
  bool hasMissionName() => _missionName != null;

  // "mission_appoint_date" field.
  DateTime? _missionAppointDate;
  DateTime? get missionAppointDate => _missionAppointDate;
  bool hasMissionAppointDate() => _missionAppointDate != null;

  // "mission_description" field.
  String? _missionDescription;
  String get missionDescription => _missionDescription ?? '';
  bool hasMissionDescription() => _missionDescription != null;

  // "receive_TC" field.
  int? _receiveTC;
  int get receiveTC => _receiveTC ?? 0;
  bool hasReceiveTC() => _receiveTC != null;

  void _initializeFields() {
    _missionName = snapshotData['mission_name'] as String?;
    _missionAppointDate = snapshotData['mission_appoint_date'] as DateTime?;
    _missionDescription = snapshotData['mission_description'] as String?;
    _receiveTC = castToType<int>(snapshotData['receive_TC']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mission');

  static Stream<MissionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MissionRecord.fromSnapshot(s));

  static Future<MissionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MissionRecord.fromSnapshot(s));

  static MissionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MissionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MissionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MissionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MissionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MissionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMissionRecordData({
  String? missionName,
  DateTime? missionAppointDate,
  String? missionDescription,
  int? receiveTC,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mission_name': missionName,
      'mission_appoint_date': missionAppointDate,
      'mission_description': missionDescription,
      'receive_TC': receiveTC,
    }.withoutNulls,
  );

  return firestoreData;
}

class MissionRecordDocumentEquality implements Equality<MissionRecord> {
  const MissionRecordDocumentEquality();

  @override
  bool equals(MissionRecord? e1, MissionRecord? e2) {
    return e1?.missionName == e2?.missionName &&
        e1?.missionAppointDate == e2?.missionAppointDate &&
        e1?.missionDescription == e2?.missionDescription &&
        e1?.receiveTC == e2?.receiveTC;
  }

  @override
  int hash(MissionRecord? e) => const ListEquality().hash([
        e?.missionName,
        e?.missionAppointDate,
        e?.missionDescription,
        e?.receiveTC
      ]);

  @override
  bool isValidKey(Object? o) => o is MissionRecord;
}
