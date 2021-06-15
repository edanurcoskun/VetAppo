import 'package:cloud_firestore/cloud_firestore.dart';

String nameText;
String surnameText;
String usernameText;
String phoneNumberText;
String passwordText;
String userDocId;
String adminUsername;
String adminPassword;
String ownerName;
String phoneNumberForAppo;
String currentName;

void createName(String name) {
  nameText = name;
}

void createSurname(String surname) {
  surnameText = surname;
}

void createUsername(String username) {
  usernameText = username;
}

void createPhoneNumber(String phoneNumber) {
  phoneNumberText = phoneNumber;
}

void createPassword(String password) {
  passwordText = password;
}

final db = Firestore.instance;

Future createUserData() async {
  var snapshot = await db
      .collection("userInfo")
      .where('username', isEqualTo: usernameText)
      .limit(1)
      .getDocuments();
  List<DocumentSnapshot> documents = snapshot.documents;
  if (documents.length != 1) {
    if (nameText != null &&
        surnameText != null &&
        usernameText != null &&
        phoneNumberText != null &&
        passwordText != null) {
      await db.collection("userInfo").add({
        'name': nameText,
        'surname': surnameText,
        'username': usernameText,
        'phoneNumber': phoneNumberText,
        'password': passwordText
      });
    }
  }
}

String exist;
Future controlUser() async {
  var snapshot = await db
      .collection("userInfo")
      .where('username', isEqualTo: usernameText)
      .limit(1)
      .getDocuments();
  List<DocumentSnapshot> documents = snapshot.documents;
  if (documents.length != 1) {
    exist = "no";
  } else if (documents.length == 1) {
    exist = "yes";
  }
}

String emptyOrNot() {
  if (nameText == null ||
      surnameText == null ||
      usernameText == null ||
      phoneNumberText == null ||
      passwordText == null) {
    return "empty";
  } else {
    return "not_empty";
  }
}

void getUserDocumentId() async {
  var doc = await db
      .collection("userInfo")
      .where('username', isEqualTo: usernameText)
      .where('password', isEqualTo: passwordText)
      .limit(1)
      .getDocuments();
  final List<DocumentSnapshot> documents = doc.documents;
  if (documents.length == 1) {
    doc.documents.forEach((element) {
      userDocId = element.documentID;
    });
  } else {
    userDocId = "null";
  }
}

void getAdminDocId() async {
  var doc = await db.collection("userInfo").document("0").get();
  if (doc.exists) {
    adminUsername = (doc.data["username"]);
    adminPassword = (doc.data["password"]);
  }
}

String whoIs() {
  getAdminDocId();
  if (usernameText == adminUsername && passwordText == adminPassword) {
    return "admin";
  }
  if (usernameText == null || passwordText == null || userDocId == "null") {
    return "null";
  }
  if (userDocId != "null" &&
      userDocId != null &&
      usernameText != null &&
      passwordText != null) {
    return "user";
  }
  return null;
}

String whoseId() {
  if (userDocId == "0") {
    return "admin";
  } else {
    return "user";
  }
}

Future getUserData() async {
  var doc = await db.collection("userInfo").document(userDocId).get();
  if (doc.exists) {
    ownerName = (doc.data['name']) + " " + (doc.data['surname']);
    phoneNumberForAppo = (doc.data['phoneNumber']);
    currentName = doc.data['username'];
    return (doc.data);
  }
}

String getUsername() {
  getUserData();
  return ownerName;
}

String getPhoneNumber() {
  getUserData();
  return phoneNumberForAppo;
}

void resetUser() {
  nameText = null;
  surnameText = null;
  usernameText = null;
  phoneNumberText = null;
  passwordText = null;
  userDocId = null;
  ownerName = null;
  exist = null;
}

void resetExceptId() {
  nameText = null;
  surnameText = null;
  usernameText = null;
  phoneNumberText = null;
  passwordText = null;
}

void resetIsExist() {
  exist = null;
}

String isThere;
Future controlForUsername() async {
  if (currentName == usernameText) {
    isThere = "yes";
  } else if (currentName != usernameText) {
    isThere = "no";
  }
}

Future updateUserIfYes() async {
  if (nameText != null &&
      surnameText != null &&
      usernameText != null &&
      phoneNumberText != null &&
      passwordText != null) {
    await db.collection('userInfo').document(userDocId).updateData({
      'name': nameText,
      'surname': surnameText,
      'username': usernameText,
      'phoneNumber': phoneNumberText,
      'password': passwordText
    });
  }
}

void updateUserIfNo() async {
  var snapshot = await db
      .collection("userInfo")
      .where('username', isEqualTo: usernameText)
      .limit(1)
      .getDocuments();
  List<DocumentSnapshot> documents = snapshot.documents;
  if (documents.length != 1) {
    if (nameText != null &&
        surnameText != null &&
        usernameText != null &&
        phoneNumberText != null &&
        passwordText != null) {
      await db.collection('userInfo').document(userDocId).updateData({
        'name': nameText,
        'surname': surnameText,
        'username': usernameText,
        'phoneNumber': phoneNumberText,
        'password': passwordText
      });
    }
  }
}

String isEmpty() {
  if (nameText == null ||
      surnameText == null ||
      usernameText == null ||
      phoneNumberText == null ||
      passwordText == null) {
    return "empty";
  } else {
    return "not_empty";
  }
}

void resetUpdate() {
  nameText = null;
  surnameText = null;
  usernameText = null;
  phoneNumberText = null;
  passwordText = null;
  isThere = null;
}
