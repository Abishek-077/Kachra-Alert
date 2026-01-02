class HiveTableConstant {
  HiveTableConstant._();

  // Database name
  static const String dbName = 'kachraAlert_db';

  // User Table (for citizens, admins, collectors)
  static const int userTypeId = 0;
  static const String userTable = 'user_table';

  // Waste Report Table (user-submitted waste issues: illegal dumping, full bins, etc.)
  static const int wasteReportTypeId = 1;
  static const String wasteReportTable = 'waste_report_table';

  // Waste Bin Table (smart bins or regular bins with location/status)
  static const int wasteBinTypeId = 2;
  static const String wasteBinTable = 'waste_bin_table';

  // Collection Schedule Table (scheduled pickups/routes)
  static const int collectionScheduleTypeId = 3;
  static const String collectionScheduleTable = 'collection_schedule_table';

  // Alert/Notification Table (overflow alerts, pickup reminders, etc.)
  static const int alertTypeId = 4;
  static const String alertTable = 'alert_table';

  // Waste Category Table (recyclable, organic, hazardous, general)
  static const int wasteCategoryTypeId = 5;
  static const String wasteCategoryTable = 'waste_category_table';

  // Report Comment Table (optional: comments on reports by admins/users)
  static const int commentTypeId = 6;
  static const String commentTable = 'comment_table';

  // Optional: Reward/Points Table (gamification for reporting/recycling)
  static const int rewardTypeId = 7;
  static const String rewardTable = 'reward_table';
}
