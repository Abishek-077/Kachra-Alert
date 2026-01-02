// services/hive/hive_service.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:kachra_alert/core/constants/hive_table_constant.dart';
import 'package:kachra_alert/features/alert/data/models/alert_hive_model.dart';
import 'package:kachra_alert/features/auth/data/models/user_hive_model.dart';
import 'package:kachra_alert/features/collection/data/models/collection_schedule_hive_model.dart';
import 'package:kachra_alert/features/comment/data/models/comment_hive_model.dart';
import 'package:kachra_alert/features/reward/data/models/reward_hive_model.dart';
import 'package:kachra_alert/features/waste_bin/data/models/waste_bin_hive_model.dart';
import 'package:kachra_alert/features/waste_category/data/models/waste_category_hive_model.dart';
import 'package:kachra_alert/features/waste_report/data/models/waste_report_hive_model.dart';
import 'package:path_provider/path_provider.dart';

final hiveServiceProvider = Provider<HiveService>((ref) {
  return HiveService();
});

class HiveService {
  Future<void> init() async {
    final directory = await getApplicationDocumentsDirectory();
    final path = '${directory.path}/${HiveTableConstant.dbName}';
    Hive.init(path);

    _registerAdapters();
    await _openBoxes();
    await _insertInitialDataIfNeeded();
  }

  void _registerAdapters() {
    if (!Hive.isAdapterRegistered(HiveTableConstant.userTypeId))
      Hive.registerAdapter(UserHiveModelAdapter());
    if (!Hive.isAdapterRegistered(HiveTableConstant.wasteReportTypeId))
      Hive.registerAdapter(WasteReportHiveModelAdapter());
    if (!Hive.isAdapterRegistered(HiveTableConstant.wasteBinTypeId))
      Hive.registerAdapter(WasteBinHiveModelAdapter());
    if (!Hive.isAdapterRegistered(HiveTableConstant.collectionScheduleTypeId))
      Hive.registerAdapter(CollectionScheduleHiveModelAdapter());
    if (!Hive.isAdapterRegistered(HiveTableConstant.alertTypeId))
      Hive.registerAdapter(AlertHiveModelAdapter());
    if (!Hive.isAdapterRegistered(HiveTableConstant.wasteCategoryTypeId))
      Hive.registerAdapter(WasteCategoryHiveModelAdapter());
    if (!Hive.isAdapterRegistered(HiveTableConstant.commentTypeId))
      Hive.registerAdapter(CommentHiveModelAdapter());
    if (!Hive.isAdapterRegistered(HiveTableConstant.rewardTypeId))
      Hive.registerAdapter(RewardHiveModelAdapter());
  }

  Future<void> _openBoxes() async {
    await Future.wait([
      Hive.openBox<UserHiveModel>(HiveTableConstant.userTable),
      Hive.openBox<WasteReportHiveModel>(HiveTableConstant.wasteReportTable),
      Hive.openBox<WasteBinHiveModel>(HiveTableConstant.wasteBinTable),
      Hive.openBox<CollectionScheduleHiveModel>(
        HiveTableConstant.collectionScheduleTable,
      ),
      Hive.openBox<AlertHiveModel>(HiveTableConstant.alertTable),
      Hive.openBox<WasteCategoryHiveModel>(
        HiveTableConstant.wasteCategoryTable,
      ),
      Hive.openBox<CommentHiveModel>(HiveTableConstant.commentTable),
      Hive.openBox<RewardHiveModel>(HiveTableConstant.rewardTable),
    ]);
  }

  Future<void> _insertInitialDataIfNeeded() async {
    await _insertWasteCategoriesIfEmpty();
    await _insertWasteBinsIfEmpty();
    await _insertCollectionSchedulesIfEmpty();
  }

  // Dummy data methods (same as before)
  Future<void> _insertWasteCategoriesIfEmpty() async {
    /* ... same as before */
  }
  Future<void> _insertWasteBinsIfEmpty() async {
    /* ... same as before */
  }
  Future<void> _insertCollectionSchedulesIfEmpty() async {
    /* ... same as before */
  }

  // ==================== PUBLIC BOX GETTERS ====================

  Box<UserHiveModel> get userBox =>
      Hive.box<UserHiveModel>(HiveTableConstant.userTable);
  Box<WasteReportHiveModel> get reportBox =>
      Hive.box<WasteReportHiveModel>(HiveTableConstant.wasteReportTable);
  Box<WasteBinHiveModel> get binBox => Hive.box<WasteBinHiveModel>(
    HiveTableConstant.wasteBinTable,
  ); // ← THIS ONE WAS MISSING IN SOME VERSIONS
  Box<CollectionScheduleHiveModel> get scheduleBox =>
      Hive.box<CollectionScheduleHiveModel>(
        HiveTableConstant.collectionScheduleTable,
      );
  Box<AlertHiveModel> get alertBox =>
      Hive.box<AlertHiveModel>(HiveTableConstant.alertTable);
  Box<WasteCategoryHiveModel> get categoryBox =>
      Hive.box<WasteCategoryHiveModel>(HiveTableConstant.wasteCategoryTable);
  Box<CommentHiveModel> get commentBox =>
      Hive.box<CommentHiveModel>(HiveTableConstant.commentTable);
  Box<RewardHiveModel> get rewardBox =>
      Hive.box<RewardHiveModel>(HiveTableConstant.rewardTable);

  // Utility
  Future<void> clearAllBoxes() async {
    await userBox.clear();
    await reportBox.clear();
    await binBox.clear();
    await scheduleBox.clear();
    await alertBox.clear();
    await categoryBox.clear();
    await commentBox.clear();
    await rewardBox.clear();
  }

  Future<void> close() async => await Hive.close();
}

class WasteBinHiveModel {
  get fillLevel => null;
}
