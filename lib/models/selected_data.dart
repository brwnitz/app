class SelectedData {
  final DateTime? selectedDate;
  final String selectedTime;
  final int serviceHours;
  final String description;
  String? address;
  String? status;

  SelectedData({
    required this.selectedDate,
    required this.selectedTime,
    required this.serviceHours,
    required this.description,
  });
}