// Provider

import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_firestore_stream/domain/chat/chat.dart';
import 'package:riverpod_firestore_stream/dto/chat/chat_req_dto.dart';

//리턴 : Stream<List<Chat>>
final chatStreamProvider = StreamProvider<List<Chat>>((ref) {
  final db = FirebaseFirestore.instance;
  Stream<QuerySnapshot<Map<String, dynamic>>> stream = db.collection("chat").snapshots();
  return stream.map((snapshot) => snapshot.docs.map((doc) => Chat.fromJson(doc.data(), id: doc.id)).toList());
});

final chatFirestoreRepositoryProvider = Provider((ref) {
  return ChatFirestoreRepository();
});

class ChatFirestoreRepository {
  final db = FirebaseFirestore.instance;

  Future<DocumentReference> insert(ChatInsertReqDto dto) {
    //Future<DocumentReference> 문서로 돌려받겠다는 것이다.
    return db.collection("chat").add(dto.toJson());
  }

  // Stream findAllAndStream() {
  //   //DateTime.now() 시간설정
  //   //db.collection("chat").orderBy("createdAt").snapshots();
  //   return db.collection("chat").snapshots();
  // }
}
