import 'package:drift/drift.dart';

import 'achievements.dart';

class UnlockedAchievements extends Table {
  TextColumn get achievementId => text().references(Achievements, #id)();

  DateTimeColumn get unlockedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {achievementId};
}
