import 'package:sample2/Database/Repository.dart';
import 'package:sample2/Database/Slot.dart';

class DBService {
  Repository? _repository;

  DBService() {
    _repository = Repository();
  }

  saveNotificationData(Slot slot) async {
    return await _repository!.insertData("notification", slot.slotMap());
  }

  readNotification() async {
    return await _repository!.readData("notification");
  }

  List<Slot?> getSlotList(resultSet) {
    List<Slot?> slotList = [];
    print(resultSet.runtimeType);
    resultSet.forEach((element) {
      var slot = Slot();
      slot.timestamp = element['timestamp'] as String;
      slot.payload = element['payload'];
      slotList.add(slot);
    });
    return slotList;
  }
}
