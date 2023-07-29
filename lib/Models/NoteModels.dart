import 'package:hive/hive.dart';

part 'NoteModels.g.dart';

@HiveType(typeId: 1)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String Titel;
  @HiveField(1)
  final String SubTitel;
  @HiveField(2)
  final String data;
  @HiveField(3)
  final int color;

  NoteModel({
    required this.Titel,
    required this.SubTitel,
    required this.data,
    required this.color,
  });
}
