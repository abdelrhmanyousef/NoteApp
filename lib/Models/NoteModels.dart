import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_generator/src/builder.dart';
part 'NoteModels.g.dart';

@HiveType(typeId: 9)
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
