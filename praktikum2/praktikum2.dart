void main() {
  var names1 = <String>{};
  Set<String> names2 = {};
  var names3 = {};

  names1.add("Abdul Aziz");
  names1.add("244107023009");

  names2.addAll({"Abdul", "987654321"});

  print("names1 (Set): $names1");
  print("names2 (Set): $names2");
  print("names3 (Map): $names3");
}