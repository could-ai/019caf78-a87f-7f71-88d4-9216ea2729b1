import 'package:flutter/material.dart';
import '../models/complaint.dart';

class ComplaintProvider with ChangeNotifier {
  final List<Complaint> _complaints = [
    Complaint(
      id: '1',
      title: 'Deep Pothole on Main St',
      description: 'There is a very deep pothole causing traffic issues.',
      category: 'Road Damage',
      location: '123 Main Street, Downtown',
      status: ComplaintStatus.pending,
      date: DateTime.now().subtract(const Duration(days: 2)),
    ),
    Complaint(
      id: '2',
      title: 'Garbage Pileup near Park',
      description: 'Garbage has not been collected for 3 days.',
      category: 'Garbage',
      location: 'Central Park West Gate',
      status: ComplaintStatus.inProgress,
      date: DateTime.now().subtract(const Duration(days: 5)),
    ),
    Complaint(
      id: '3',
      title: 'Broken Street Light',
      description: 'Street light #45 is flickering and mostly off.',
      category: 'Street Light',
      location: '45 Elm Avenue',
      status: ComplaintStatus.solved,
      date: DateTime.now().subtract(const Duration(days: 10)),
    ),
  ];

  List<Complaint> get complaints => [..._complaints];

  void addComplaint(Complaint complaint) {
    _complaints.insert(0, complaint);
    notifyListeners();
  }

  // Mock method to simulate status updates
  void updateStatus(String id, ComplaintStatus newStatus) {
    final index = _complaints.indexWhere((c) => c.id == id);
    if (index >= 0) {
      _complaints[index] = Complaint(
        id: _complaints[index].id,
        title: _complaints[index].title,
        description: _complaints[index].description,
        category: _complaints[index].category,
        imageUrl: _complaints[index].imageUrl,
        location: _complaints[index].location,
        status: newStatus,
        date: _complaints[index].date,
      );
      notifyListeners();
    }
  }
}
