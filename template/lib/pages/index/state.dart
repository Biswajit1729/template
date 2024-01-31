import 'package:get/get.dart';

class IndexState {
  // title
  final _title = "Jeet".obs;
  set title(value) => _title.value = value;
  get title => _title.value;
}
