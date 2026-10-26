import 'package:drift/drift.dart';

class TriviaResults extends Table {
  IntColumn get id => integer().autoIncrement()();

  IntColumn get score => integer()();

  IntColumn get correctAnswers => integer()();

  IntColumn get totalQuestions => integer()();

  IntColumn get durationSeconds => integer()();

  DateTimeColumn get playedAt => dateTime()();

  TextColumn get language => text()();
}
