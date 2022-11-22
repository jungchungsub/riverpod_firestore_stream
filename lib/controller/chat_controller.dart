//Provider
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_firestore_stream/domain/chat/chat_firestore_repository.dart';
import 'package:riverpod_firestore_stream/dto/chat/chat_req_dto.dart';

final chatControllerProvider = Provider((ref) {
  return ChatController(ref);
});

class ChatController {
  Ref _ref;
  ChatController(this._ref);

  void findAllStream() {}

  void insert(ChatInsertReqDto dto) async {
    Future<DocumentReference> futureDoc = _ref.read(chatFirestoreRepositoryProvider).insert(dto);

    futureDoc.then((value) {
      print("document id : ${value.id}");
      //여기서는 화면 이동
      //Navigator.pushNamed(context.Routes.login.path);
      //Navigator.popAndPushNamed(context, Routes.login.path);
      //Navigator.pop(context);
      //Navigator.pushNamedAndRemoveUntil(context, Routes.login.paht, (route) => false);
    }).onError((error, stackTrace) {
      print("error : ${error}");
    });
  }
}
