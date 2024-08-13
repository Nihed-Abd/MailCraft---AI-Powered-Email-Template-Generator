import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TemplatesRecord extends FirestoreRecord {
  TemplatesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  bool hasCode() => _code != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "color1" field.
  Color? _color1;
  Color? get color1 => _color1;
  bool hasColor1() => _color1 != null;

  // "color2" field.
  Color? _color2;
  Color? get color2 => _color2;
  bool hasColor2() => _color2 != null;

  // "color3" field.
  Color? _color3;
  Color? get color3 => _color3;
  bool hasColor3() => _color3 != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "Private" field.
  bool? _private;
  bool get private => _private ?? false;
  bool hasPrivate() => _private != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _code = snapshotData['code'] as String?;
    _image = snapshotData['image'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _color1 = getSchemaColor(snapshotData['color1']);
    _color2 = getSchemaColor(snapshotData['color2']);
    _color3 = getSchemaColor(snapshotData['color3']);
    _category = snapshotData['category'] as String?;
    _private = snapshotData['Private'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Templates');

  static Stream<TemplatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TemplatesRecord.fromSnapshot(s));

  static Future<TemplatesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TemplatesRecord.fromSnapshot(s));

  static TemplatesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TemplatesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TemplatesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TemplatesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TemplatesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TemplatesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTemplatesRecordData({
  DateTime? date,
  String? code,
  String? image,
  DocumentReference? user,
  String? title,
  String? description,
  Color? color1,
  Color? color2,
  Color? color3,
  String? category,
  bool? private,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'code': code,
      'image': image,
      'user': user,
      'title': title,
      'description': description,
      'color1': color1,
      'color2': color2,
      'color3': color3,
      'category': category,
      'Private': private,
    }.withoutNulls,
  );

  return firestoreData;
}

class TemplatesRecordDocumentEquality implements Equality<TemplatesRecord> {
  const TemplatesRecordDocumentEquality();

  @override
  bool equals(TemplatesRecord? e1, TemplatesRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.code == e2?.code &&
        e1?.image == e2?.image &&
        e1?.user == e2?.user &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.color1 == e2?.color1 &&
        e1?.color2 == e2?.color2 &&
        e1?.color3 == e2?.color3 &&
        e1?.category == e2?.category &&
        e1?.private == e2?.private;
  }

  @override
  int hash(TemplatesRecord? e) => const ListEquality().hash([
        e?.date,
        e?.code,
        e?.image,
        e?.user,
        e?.title,
        e?.description,
        e?.color1,
        e?.color2,
        e?.color3,
        e?.category,
        e?.private
      ]);

  @override
  bool isValidKey(Object? o) => o is TemplatesRecord;
}
