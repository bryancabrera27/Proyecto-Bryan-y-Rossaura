import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class EstadoDeMascotasRecord extends FirestoreRecord {
  EstadoDeMascotasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "NombreDeMascota" field.
  DocumentReference? _nombreDeMascota;
  DocumentReference? get nombreDeMascota => _nombreDeMascota;
  bool hasNombreDeMascota() => _nombreDeMascota != null;

  // "Telefono" field.
  DocumentReference? _telefono;
  DocumentReference? get telefono => _telefono;
  bool hasTelefono() => _telefono != null;

  // "Dueno" field.
  String? _dueno;
  String get dueno => _dueno ?? '';
  bool hasDueno() => _dueno != null;

  // "Descripcion" field.
  DocumentReference? _descripcion;
  DocumentReference? get descripcion => _descripcion;
  bool hasDescripcion() => _descripcion != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nombreDeMascota = snapshotData['NombreDeMascota'] as DocumentReference?;
    _telefono = snapshotData['Telefono'] as DocumentReference?;
    _dueno = snapshotData['Dueno'] as String?;
    _descripcion = snapshotData['Descripcion'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('EstadoDeMascotas')
          : FirebaseFirestore.instance.collectionGroup('EstadoDeMascotas');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('EstadoDeMascotas').doc(id);

  static Stream<EstadoDeMascotasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EstadoDeMascotasRecord.fromSnapshot(s));

  static Future<EstadoDeMascotasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => EstadoDeMascotasRecord.fromSnapshot(s));

  static EstadoDeMascotasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EstadoDeMascotasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EstadoDeMascotasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EstadoDeMascotasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EstadoDeMascotasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EstadoDeMascotasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEstadoDeMascotasRecordData({
  DocumentReference? nombreDeMascota,
  DocumentReference? telefono,
  String? dueno,
  DocumentReference? descripcion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NombreDeMascota': nombreDeMascota,
      'Telefono': telefono,
      'Dueno': dueno,
      'Descripcion': descripcion,
    }.withoutNulls,
  );

  return firestoreData;
}

class EstadoDeMascotasRecordDocumentEquality
    implements Equality<EstadoDeMascotasRecord> {
  const EstadoDeMascotasRecordDocumentEquality();

  @override
  bool equals(EstadoDeMascotasRecord? e1, EstadoDeMascotasRecord? e2) {
    return e1?.nombreDeMascota == e2?.nombreDeMascota &&
        e1?.telefono == e2?.telefono &&
        e1?.dueno == e2?.dueno &&
        e1?.descripcion == e2?.descripcion;
  }

  @override
  int hash(EstadoDeMascotasRecord? e) => const ListEquality()
      .hash([e?.nombreDeMascota, e?.telefono, e?.dueno, e?.descripcion]);

  @override
  bool isValidKey(Object? o) => o is EstadoDeMascotasRecord;
}
