enum ComplaintStatus { pending, inProgress, solved }

class Complaint {
  final String id;
  final String title;
  final String description;
  final String category;
  final String? imageUrl;
  final String location;
  final ComplaintStatus status;
  final DateTime date;

  Complaint({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    this.imageUrl,
    required this.location,
    required this.status,
    required this.date,
  });
}
