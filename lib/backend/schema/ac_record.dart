import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AcRecord extends FirestoreRecord {
  AcRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "BRAND" field.
  String? _brand;
  String get brand => _brand ?? '';
  bool hasBrand() => _brand != null;

  // "Model" field.
  String? _model;
  String get model => _model ?? '';
  bool hasModel() => _model != null;

  // "Issue" field.
  String? _issue;
  String get issue => _issue ?? '';
  bool hasIssue() => _issue != null;

  void _initializeFields() {
    _brand = snapshotData['BRAND'] as String?;
    _model = snapshotData['Model'] as String?;
    _issue = snapshotData['Issue'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AC');

  static Stream<AcRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AcRecord.fromSnapshot(s));

  static Future<AcRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AcRecord.fromSnapshot(s));

  static AcRecord fromSnapshot(DocumentSnapshot snapshot) => AcRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AcRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AcRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AcRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AcRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAcRecordData({
  String? brand,
  String? model,
  String? issue,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'BRAND': brand,
      'Model': model,
      'Issue': issue,
    }.withoutNulls,
  );

  return firestoreData;
}

class AcRecordDocumentEquality implements Equality<AcRecord> {
  const AcRecordDocumentEquality();

  @override
  bool equals(AcRecord? e1, AcRecord? e2) {
    return e1?.brand == e2?.brand &&
        e1?.model == e2?.model &&
        e1?.issue == e2?.issue;
  }

  @override
  int hash(AcRecord? e) =>
      const ListEquality().hash([e?.brand, e?.model, e?.issue]);

  @override
  bool isValidKey(Object? o) => o is AcRecord;
}
