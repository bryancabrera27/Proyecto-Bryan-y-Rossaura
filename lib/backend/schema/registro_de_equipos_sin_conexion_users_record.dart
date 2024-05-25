import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class RegistroDeEquiposSinConexionUsersRecord extends FirestoreRecord {
  RegistroDeEquiposSinConexionUsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Descripsion" field.
  String? _descripsion;
  String get descripsion => _descripsion ?? '';
  bool hasDescripsion() => _descripsion != null;

  // "Phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "ImagenDeMacota" field.
  String? _imagenDeMacota;
  String get imagenDeMacota => _imagenDeMacota ?? '';
  bool hasImagenDeMacota() => _imagenDeMacota != null;

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  void _initializeFields() {
    _descripsion = snapshotData['Descripsion'] as String?;
    _phone = snapshotData['Phone'] as String?;
    _imagenDeMacota = snapshotData['ImagenDeMacota'] as String?;
    _nombre = snapshotData['Nombre'] as String?;
  }

  static CollectionReference get collection => FirebaseFirestore.instance
      .collection('Registro_De_equipos_Sin_ConexionUsers');

  static Stream<RegistroDeEquiposSinConexionUsersRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => RegistroDeEquiposSinConexionUsersRecord.fromSnapshot(s));

  static Future<RegistroDeEquiposSinConexionUsersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref
          .get()
          .then((s) => RegistroDeEquiposSinConexionUsersRecord.fromSnapshot(s));

  static RegistroDeEquiposSinConexionUsersRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      RegistroDeEquiposSinConexionUsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RegistroDeEquiposSinConexionUsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RegistroDeEquiposSinConexionUsersRecord._(
          reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RegistroDeEquiposSinConexionUsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RegistroDeEquiposSinConexionUsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRegistroDeEquiposSinConexionUsersRecordData({
  String? descripsion,
  String? phone,
  String? imagenDeMacota,
  String? nombre,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Descripsion': descripsion,
      'Phone': phone,
      'ImagenDeMacota': imagenDeMacota,
      'Nombre': nombre,
    }.withoutNulls,
  );

  return firestoreData;
}

class RegistroDeEquiposSinConexionUsersRecordDocumentEquality
    implements Equality<RegistroDeEquiposSinConexionUsersRecord> {
  const RegistroDeEquiposSinConexionUsersRecordDocumentEquality();

  @override
  bool equals(RegistroDeEquiposSinConexionUsersRecord? e1,
      RegistroDeEquiposSinConexionUsersRecord? e2) {
    return e1?.descripsion == e2?.descripsion &&
        e1?.phone == e2?.phone &&
        e1?.imagenDeMacota == e2?.imagenDeMacota &&
        e1?.nombre == e2?.nombre;
  }

  @override
  int hash(RegistroDeEquiposSinConexionUsersRecord? e) => const ListEquality()
      .hash([e?.descripsion, e?.phone, e?.imagenDeMacota, e?.nombre]);

  @override
  bool isValidKey(Object? o) => o is RegistroDeEquiposSinConexionUsersRecord;
}
