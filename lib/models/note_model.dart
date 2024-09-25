import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';
part 'note_model.g.dart';


@HiveType(typeId: 1)
class Note {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String categoty;

  @HiveField(3)
  final String content;

  @HiveField(4)
  final DateTime date;

  Note({
    String? id,
    required this.title,
    required this.categoty,
    required this.content,
    required this.date,
  }) : id = id ?? const Uuid().v4(); // if id is null, generate a new one
}
