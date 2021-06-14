class Slot {
  String? timestamp;
  String? payload;

  Slot({this.timestamp, this.payload});

  slotMap() {
    var mapping = Map<String, dynamic>();
    mapping['timestamp'] = timestamp;
    mapping['payload'] = payload;
    return mapping;
  }
}
