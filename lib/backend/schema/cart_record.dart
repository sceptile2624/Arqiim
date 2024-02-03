import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "creator" field.
  DocumentReference? _creator;
  DocumentReference? get creator => _creator;
  bool hasCreator() => _creator != null;

  // "itemCount" field.
  int? _itemCount;
  int get itemCount => _itemCount ?? 0;
  bool hasItemCount() => _itemCount != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "selectedItems-List" field.
  List<DocumentReference>? _selectedItemsList;
  List<DocumentReference> get selectedItemsList =>
      _selectedItemsList ?? const [];
  bool hasSelectedItemsList() => _selectedItemsList != null;

  void _initializeFields() {
    _creator = snapshotData['creator'] as DocumentReference?;
    _itemCount = castToType<int>(snapshotData['itemCount']);
    _isActive = snapshotData['isActive'] as bool?;
    _amount = castToType<double>(snapshotData['amount']);
    _selectedItemsList = getDataList(snapshotData['selectedItems-List']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  DocumentReference? creator,
  int? itemCount,
  bool? isActive,
  double? amount,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'creator': creator,
      'itemCount': itemCount,
      'isActive': isActive,
      'amount': amount,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    const listEquality = ListEquality();
    return e1?.creator == e2?.creator &&
        e1?.itemCount == e2?.itemCount &&
        e1?.isActive == e2?.isActive &&
        e1?.amount == e2?.amount &&
        listEquality.equals(e1?.selectedItemsList, e2?.selectedItemsList);
  }

  @override
  int hash(CartRecord? e) => const ListEquality().hash(
      [e?.creator, e?.itemCount, e?.isActive, e?.amount, e?.selectedItemsList]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
