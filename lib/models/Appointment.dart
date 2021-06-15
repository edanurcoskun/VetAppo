import 'package:cloud_firestore/cloud_firestore.dart';

import 'User.dart';

String anotherNameText;
String anotherPhoneText;
String appoYearText;
String appoMonthText;
String appoDayText;
String appoHourText;
String noteText;
String petAgeText;
String petGenderText;
String petNameText;
String petTypeText;
String appoDocId;
String whichPetText;
String whenText;
String whichOwnerText;

void createAnotherName(String anotherName) {
  anotherNameText = anotherName;
}

void createAnotherPhone(String anotherPhone) {
  anotherPhoneText = anotherPhone;
}

void createAppoYear(String appoYear) {
  appoYearText = appoYear;
}

void createAppoMonth(String appoMonth) {
  appoMonthText = appoMonth;
}

void createAppoDay(String appoDay) {
  appoDayText = appoDay;
}

void createAppoHour(String appoHour) {
  appoHourText = appoHour;
}

void createNote(String note) {
  noteText = note;
}

void createPetAge(String petAge) {
  petAgeText = petAge;
}

void createPetGender(String petGender) {
  petGenderText = petGender;
}

void createPetName(String petName) {
  petNameText = petName;
}

void createPetType(String petType) {
  petTypeText = petType;
}

void createWhichPetName(String whichPetName) {
  whichPetText = whichPetName;
}

void createWhichOwner(String whichOwner) {
  whichOwnerText = whichOwner;
}

void createWhen(String when) {
  whenText = when;
}

final db = Firestore.instance;

Future createAppoData() async {
  var snapshot = await db
      .collection("appoInfo")
      .where('appoDate',
          isEqualTo:
              (appoYearText + appoMonthText + appoDayText + appoHourText))
      .limit(1)
      .getDocuments();
  List<DocumentSnapshot> documents = snapshot.documents;
  if (documents.length != 1) {
    if (((anotherNameText != null && anotherPhoneText != null) ||
            (anotherNameText == null && anotherPhoneText == null)) &&
        appoYearText != null &&
        appoMonthText != null &&
        appoDayText != null &&
        appoHourText != null &&
        petAgeText != null &&
        petGenderText != null &&
        petNameText != null &&
        petTypeText != null) {
      await db.collection("appoInfo").add({
        'anotherName': anotherNameText,
        'anotherPhone': anotherPhoneText,
        'appoYear': appoYearText,
        'appoMonth': appoMonthText,
        'appoDay': appoDayText,
        'appoHour': appoHourText,
        'appoDate': appoYearText + appoMonthText + appoDayText + appoHourText,
        'note': noteText,
        'petAge': petAgeText,
        'petGender': petGenderText,
        'petName': petNameText,
        'petType': petTypeText,
        'ownerName': getUsername(),
        'ownerPhone': getPhoneNumber()
      });
    }
  }
}

String isEmptyAppo() {
  if (((anotherNameText != null && anotherPhoneText == null) ||
          (anotherNameText == null && anotherPhoneText != null)) ||
      appoYearText == null ||
      appoMonthText == null ||
      appoDayText == null ||
      appoHourText == null) {
    return "empty";
  } else {
    return "not_empty";
  }
}

String typeIsEmpty() {
  //for first appo page of user
  if (petTypeText == null) {
    return "empty";
  }
  return null;
}

void resetFirstTwoPage() {
  //for deleting first and second appo page
  petAgeText = null;
  petGenderText = null;
  petNameText = null;
  petTypeText = null;
}

String isThereEmptyPlace() {
  //for second appo page of user
  if (petNameText == null || petGenderText == null || petAgeText == null) {
    return "empty";
  }
  return null;
}

void resetLastTwoPage() {
  //for deleting second and third appo page
  petAgeText = null;
  petGenderText = null;
  petNameText = null;
  appoYearText = null;
  appoMonthText = null;
  appoDayText = null;
  appoHourText = null;
  anotherNameText = null;
  anotherPhoneText = null;
  noteText = null;
}

Future getTodayAppo() async {
  var doc = await db
      .collection("appoInfo")
      .where('appoYear',
          isEqualTo: DateTime.now().year.toString().padLeft(2, '0'))
      .where('appoMonth',
          isEqualTo: DateTime.now().month.toString().padLeft(2, '0'))
      .where('appoDay',
          isEqualTo: DateTime.now().day.toString().padLeft(2, '0'))
      .where('appoHour',
          isGreaterThanOrEqualTo:
              DateTime.now().hour.toString().padLeft(2, '0'))
      .getDocuments();
  final List<DocumentSnapshot> documents = doc.documents;
  if (documents.length != 0) {
    return doc.documents;
  }
}

int todayWithHour = int.parse(
    " ${DateTime.now().year}${DateTime.now().month.toString().padLeft(2, '0')}${DateTime.now().day.toString().padLeft(2, '0')}${DateTime.now().hour.toString().padLeft(2, '0')}");

int today = int.parse(
    " ${DateTime.now().year}${DateTime.now().month.toString().padLeft(2, '0')}${DateTime.now().day.toString().padLeft(2, '0')}00");

Future getNextAppo() async {
  var doc = await db
      .collection("appoInfo")
      .where('appoDate',
          isGreaterThanOrEqualTo:
              (today + 100).toString()) //+100 is for increase one day
      .getDocuments();
  final List<DocumentSnapshot> documents = doc.documents;
  if (documents.length != 0) {
    return doc.documents;
  }
}

//for admin
Future getOldAppo() async {
  var doc = await db
      .collection("appoInfo")
      .where('petName', isEqualTo: whichPetText)
      .where('ownerName', isEqualTo: whichOwnerText)
      .where('appoDate', isLessThan: todayWithHour.toString())
      .getDocuments();
  final List<DocumentSnapshot> documents = doc.documents;
  if (documents.length != 0) {
    return doc.documents;
  }
}

//for admin
Future getAppoDetail() async {
  var doc = await db
      .collection("appoInfo")
      .where('appoDate', isEqualTo: whenText)
      .getDocuments();
  final List<DocumentSnapshot> documents = doc.documents;
  if (documents.length != 0) {
    return doc.documents;
  }
}

Future getOldAppoUser() async {
  var doc = await db
      .collection("appoInfo")
      .where('ownerName', isEqualTo: getUsername())
      .where('ownerPhone', isEqualTo: getPhoneNumber())
      .where('appoDate', isLessThan: todayWithHour.toString())
      .getDocuments();
  final List<DocumentSnapshot> documents = doc.documents;
  if (documents.length != 0) {
    return doc.documents;
  }
}

Future getActiveAppoUser() async {
  var doc = await db
      .collection("appoInfo")
      .where('ownerName', isEqualTo: getUsername())
      .where('ownerPhone', isEqualTo: getPhoneNumber())
      .where('appoDate', isGreaterThanOrEqualTo: todayWithHour.toString())
      .getDocuments();
  final List<DocumentSnapshot> documents = doc.documents;
  if (documents.length != 0) {
    return doc.documents;
  }
}

String docId;
void getAppoId(String when) async {
  var doc = await db
      .collection('appoInfo')
      .where('appoDate', isEqualTo: when)
      .getDocuments();
  final List<DocumentSnapshot> documents = doc.documents;
  if (documents.length == 1) {
    doc.documents.forEach((element) {
      docId = element.documentID;
    });
  }
}

void deleteAppoData() {
  db.collection('appoInfo').document(docId).delete();
}
