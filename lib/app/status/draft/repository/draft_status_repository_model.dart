import 'package:moor/moor.dart';

// todo : move to dao model
enum DraftStatusOrderByType {
  updatedAt,
}

class DraftStatusOrderingTermData {
  final DraftStatusOrderByType orderByType;
  final OrderingMode orderingMode;
  DraftStatusOrderingTermData(
      {@required this.orderByType, @required this.orderingMode});

  @override
  String toString() {
    return 'DraftStatusOrderingTermData{orderByType: $orderByType, orderingMode: $orderingMode}';
  }
}