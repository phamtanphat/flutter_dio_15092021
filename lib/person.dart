import 'package:flutter/material.dart';
import 'package:flutter_dio_15092021/gender.dart';

class Person{
  late String name;
  late String gender;


  Person.female(String name){
    this.name = name;
    gender = "FEMALE";
  }

  Person.male(String name){
    this.name = name;
    gender = "MALE";
  }

  factory Person(String name ,GENDER gender){
    switch(gender){
      case GENDER.FEMALE :
        return Person.female(name);
      default :
        return Person.male(name);
    }
  }

  @override
  String toString() {
    return 'Person{name: $name, gender: $gender}';
  }
}
