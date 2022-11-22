// Provider

import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_firestore_stream/dto/chat/chat_req_dto.dart';

final chatFirestoreRepositoryProvider = Provider((ref) {
  return ChatFirestoreRepository();
});

class ChatFirestoreRepository {
  final db = FirebaseFirestore.instance;

  Future<DocumentReference> insert(ChatInsertReqDto dto) {
    //Future<DocumentReference> 문서로 돌려받겠다는 것이다.
    return db.collection("chat").add(dto.toJson());
  } //db에 insert하는 행위
  // db.collection("chat").add(dto.toJson()).then((value) => null).onError((error, stackTrace) => null);
}
