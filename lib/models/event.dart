import 'package:calender_app/models/element.dart';

class Event {
  ///
  /// _id
  /// name
  /// icon
  /// description
  /// actual date
  /// repeat on = "english or gujarati"
  /// []elements
  /// date, month
  /// createdDate
  /// updatedDate

  String uid;
  String name;
  String icon;
  String description;
  DateTime actualDate;
  DateType dateType;
  List<Element> elements;
  int date, month;
  DateTime createdDate = DateTime.now(), updatedDate = DateTime.now();

  Event(
    this.uid,
    this.name,
    this.icon,
    this.description,
    this.actualDate,
    this.dateType,
    this.elements,
    this.date,
    this.month,
  ) {
    this.updatedDate = DateTime.now();
    if (uid == "") {
      this.createdDate = DateTime.now();
    }
  }
}

enum DateType { English, Vikram }
