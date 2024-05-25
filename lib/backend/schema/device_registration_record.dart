import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class DeviceRegistrationRecord extends FirestoreRecord {
  DeviceRegistrationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "NameDevice" field.
  String? _nameDevice;
  String get nameDevice => _nameDevice ?? '';
  bool hasNameDevice() => _nameDevice != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _photo = snapshotData['Photo'] as String?;
    _description = snapshotData['Description'] as String?;
    _phone = snapshotData['Phone'] as String?;
    _nameDevice = snapshotData['NameDevice'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Device_Registration')
          : FirebaseFirestore.instance.collectionGroup('Device_Registration');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Device_Registration').doc(id);

  static Stream<DeviceRegistrationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DeviceRegistrationRecord.fromSnapshot(s));

  static Future<DeviceRegistrationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DeviceRegistrationRecord.fromSnapshot(s));

  static DeviceRegistrationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DeviceRegistrationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DeviceRegistrationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DeviceRegistrationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DeviceRegistrationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DeviceRegistrationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDeviceRegistrationRecordData({
  String? photo,
  String? description,
  String? phone,
  String? nameDevice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Photo': photo,
      'Description': description,
      'Phone': phone,
      'NameDevice': nameDevice,
    }.withoutNulls,
  );

  return firestoreData;
}

class DeviceRegistrationRecordDocumentEquality
    implements Equality<DeviceRegistrationRecord> {
  const DeviceRegistrationRecordDocumentEquality();

  @override
  bool equals(DeviceRegistrationRecord? e1, DeviceRegistrationRecord? e2) {
    return e1?.photo == e2?.photo &&
        e1?.description == e2?.description &&
        e1?.phone == e2?.phone &&
        e1?.nameDevice == e2?.nameDevice;
  }

  @override
  int hash(DeviceRegistrationRecord? e) => const ListEquality()
      .hash([e?.photo, e?.description, e?.phone, e?.nameDevice]);

  @override
  bool isValidKey(Object? o) => o is DeviceRegistrationRecord;
}
