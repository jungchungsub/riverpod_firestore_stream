// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:riverpod_firestore_stream/domain/chat/chat.dart';
// import 'package:riverpod_firestore_stream/domain/chat/chat_firestore_repository.dart';
//
// final chatServiceProvider = StreamProvider<List<Chat>>((ref) {
//   //전체 스냅샷을 복사해서 한방에 넣을것이다.
//
//   Stream stream = ref.read(chatFirestoreRepositoryProvider).findAllAndStream();
//
//   return stream.map((event) => event.docs.map((doc) => Chat));
// });
