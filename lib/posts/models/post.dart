import 'package:equatable/equatable.dart';

class Post extends Equatable {
  const Post({required this.id, required this.title, required this.body});

  final int id;
  final String title;
  final String body;

  @override
  // TODO: implement props
  List<Object> get props => [id, title, body];
}
