class PersonData {
   String name;
   String symptoms;

  PersonData({this.name, this.symptoms});
 
  set setName(String name) {
    this.name = name;
  }
   String get getName => name;
  
  set setSymptoms(String symptoms) {
    this.symptoms = symptoms;
  }
  String get getSymptoms => symptoms;

}

List<PersonData> dummyData = [
  new PersonData(
      name: "aleem",
      symptoms: "You are so amazing !"),
      ];