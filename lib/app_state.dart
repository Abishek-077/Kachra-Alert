import 'package:flutter/material.dart';
import 'models/collection_schedule.dart';
import 'models/notification_item.dart';

class AppState extends ChangeNotifier {
  String _userName = 'John Doe';
  String _userEmail = 'john@example.com';
  String _society = 'Green Valley Society';
  String _zone = 'Zone A';
  bool _isPremium = false;
  int _missedPickups = 0;
  double _pendingPayment = 250.0;

  // Schedule Data
  List<CollectionSchedule> _schedules = [
    CollectionSchedule(
      id: '1',
      type: 'Mixed Waste',
      day: 'Monday & Thursday',
      time: '9:00 AM',
      status: 'upcoming',
      icon: Icons.delete_outline,
      gradient: const LinearGradient(
        colors: [Color(0xFF667EEA), Color(0xFF764BA2)],
      ),
    ),
    CollectionSchedule(
      id: '2',
      type: 'Recyclable Waste',
      day: 'Wednesday',
      time: '10:00 AM',
      status: 'upcoming',
      icon: Icons.recycling_outlined,
      gradient: const LinearGradient(
        colors: [Color(0xFF00D9C0), Color(0xFF00F5D4)],
      ),
    ),
    CollectionSchedule(
      id: '3',
      type: 'Organic Waste',
      day: 'Friday',
      time: '8:30 AM',
      status: 'upcoming',
      icon: Icons.eco_outlined,
      gradient: const LinearGradient(
        colors: [Color(0xFF11998E), Color(0xFF38EF7D)],
      ),
    ),
  ];

  // Notifications
  List<NotificationItem> _notifications = [
    NotificationItem(
      id: '1',
      title: 'Collection in 30 minutes',
      message: 'Mixed waste collection scheduled for today at 9:00 AM',
      time: '8:30 AM',
      isRead: false,
      type: 'reminder',
    ),
    NotificationItem(
      id: '2',
      title: 'Payment Due',
      message: 'Your monthly waste collection fee of ₹250 is due',
      time: 'Yesterday',
      isRead: false,
      type: 'payment',
    ),
  ];

  // Getters
  String get userName => _userName;
  String get userEmail => _userEmail;
  String get society => _society;
  String get zone => _zone;
  bool get isPremium => _isPremium;
  int get missedPickups => _missedPickups;
  double get pendingPayment => _pendingPayment;
  List<CollectionSchedule> get schedules => _schedules;
  List<NotificationItem> get notifications => _notifications;
  int get unreadNotifications => _notifications.where((n) => !n.isRead).length;

  // Methods
  void markNotificationAsRead(String id) {
    final index = _notifications.indexWhere((n) => n.id == id);
    if (index != -1) {
      _notifications[index].isRead = true;
      notifyListeners();
    }
  }

  void reportMissedPickup(String scheduleId, String reason) {
    _missedPickups++;
    _notifications.add(
      NotificationItem(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        title: 'Missed Pickup Reported',
        message:
            'Your report has been submitted. We will notify the collection agency.',
        time: 'Just now',
        isRead: false,
        type: 'alert',
      ),
    );
    notifyListeners();
  }

  void makePayment(double amount) {
    _pendingPayment -= amount;
    if (_pendingPayment < 0) _pendingPayment = 0;
    _notifications.add(
      NotificationItem(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        title: 'Payment Successful',
        message: 'Your payment of ₹$amount has been processed successfully',
        time: 'Just now',
        isRead: false,
        type: 'success',
      ),
    );
    notifyListeners();
  }
}
