class NotificationItem {
  final String id;
  final String title;
  final String message;
  final String time;
  bool isRead;
  final String type;

  NotificationItem({
    required this.id,
    required this.title,
    required this.message,
    required this.time,
    required this.isRead,
    required this.type,
  });
}
