import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';

var logger = Logger();

// static
// create() async {
//   try {
//     await FirebaseFirestore.instance
//         .collection('fruits')
//         .doc('pineapple')
//         .set({
//       'brand': 'malbok',
//       'year': 2025,
//       'price': 150
//     });

//     if (kDebugMode) {
//       logger.d('Record Created');
//     }
//   } catch (e) {
//     logger.e('Error: $e');
//   }
// }

// dynamic
Future<void> create(String collection, doc, name, animal, int age) async {
  try {
    await FirebaseFirestore.instance.collection(collection).doc(doc).set({
      'name': name,
      'animal': animal,
      'age': age,
    });
    logger.d('Record Created');
  } catch (e) {
    logger.e('Error:$e');
  }
}

Future<void> update(
  String collection,
  doc,
  field,
  Object? newFieldValue,
) async {
  try {
    await FirebaseFirestore.instance.collection(collection).doc(doc).update({
      field: newFieldValue,
    });
    logger.d('Record updated');
  } catch (e) {
    logger.e('Error:$e');
  }
}

Future<void> delete(String collectionName,docName) async {
  await FirebaseFirestore.instance.collection(collectionName).doc(docName).delete();
  logger.d('Document Deleted');
}
