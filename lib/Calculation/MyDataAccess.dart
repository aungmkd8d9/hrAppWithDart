
import 'dart:core';

import 'package:flutter/cupertino.dart';

class Employee {

  String name = '';
  String nrc = '';
  String gender = '';
  String department = '';
  String position = '';
  String salary = '';
  String email = '';
  String phone = '';

  Employee(this.name, this.nrc, this.gender, this.department, this.position,
      this.salary, this.email, this.phone);


  int Fsalary(int salary, bool leave, int syear, bool late,) {
    int ans = 0;
    int salary = 0;
    if(leave == false){
      salary += 10000;
    }
    if(late == false){
      salary += 30000;
    }
    ans = salary+(syear*50000);
    return ans;
  }
}



class Manager extends Employee{
  @override
  late String department;

  @override
  late String email;

  @override
  late String gender;

  @override
  late String name;

  @override
  late String nrc;

  @override
  late String phone;

  @override
  late String position;

  @override
  late String salary;

  Manager(String name, String nrc, String gender, String department, String position, String salary, String email, String phone) : super(name, nrc, gender, department, position, salary, email, phone);

  @override
  int Fsalary(int salary, bool leave, int syear, bool late) {
    int ans = 0;
    int Msalary = 300000;
    if(leave == false){
      Msalary += 10000;
    }
    if(late == false){
      Msalary += 30000;
    }
    ans = Msalary+(syear*50000);
    return ans;
  }
}

class Lecturer extends Employee{
  @override
  late String department;

  @override
  late String email;

  @override
  late String gender;

  @override
  late String name;

  @override
  late String nrc;

  @override
  late String phone;

  @override
  late String position;

  @override
  late String salary;

  Lecturer(String name, String nrc, String gender, String department, String position, String salary, String email, String phone) : super(name, nrc, gender, department, position, salary, email, phone);

  @override
  int Fsalary(int salary, bool leave, int syear, bool late) {
    int ans = 0;
    int Lsalary = 200000;
    if(leave == false){
      Lsalary += 10000;
    }
    if(late == false){
      Lsalary += 30000;
    }
    ans = Lsalary+(syear*50000);
    return ans;
  }
}

class Supervisor extends Employee{
  @override
  late String department;

  @override
  late String email;

  @override
  late String gender;

  @override
  late String name;

  @override
  late String nrc;

  @override
  late String phone;

  @override
  late String position;

  @override
  late String salary;

  Supervisor(String name, String nrc, String gender, String department, String position, String salary, String email, String phone) : super(name, nrc, gender, department, position, salary, email, phone);

  @override
  int Fsalary(int salary, bool leave, int syear, bool late) {
    int ans = 0;
    int Ssalary = 400000;
    if(leave == false){
      Ssalary += 10000;
    }
    if(late == false){
      Ssalary += 30000;
    }
    ans = Ssalary+(syear*50000);
    return ans;
  }
}


class Director extends Employee{
  @override
  late String department;

  @override
  late String email;

  @override
  late String gender;

  @override
  late String name;

  @override
  late String nrc;

  @override
  late String phone;

  @override
  late String position;

  @override
  late String salary;

  Director(String name, String nrc, String gender, String department, String position, String salary, String email, String phone) : super(name, nrc, gender, department, position, salary, email, phone);

  @override
  int Fsalary(int salary, bool leave, int syear, bool late) {
    int ans = 0;
    int Dsalary = 500000;
      if(leave == false){
      Dsalary += 10000;
    }
    if(late == false){
      Dsalary += 30000;
    }
    ans = Dsalary+(syear*50000);
    return ans;
  }
}

class Nothing extends Employee{
  @override
  late String department;

  @override
  late String email;

  @override
  late String gender;

  @override
  late String name;

  @override
  late String nrc;

  @override
  late String phone;

  @override
  late String position;

  @override
  late String salary;

  Nothing(String name, String nrc, String gender, String department, String position, String salary, String email, String phone) : super(name, nrc, gender, department, position, salary, email, phone);

  @override
  int Fsalary(int salary, bool leave, int syear, bool late) {
    int ans = 0;
    return ans;
  }
}

class pFactory{

  Employee pFactoryDemo(String empPos, String name){
    MyDataAccess M= MyDataAccess();
    Employee eT;
    if(M.searchData(name)==true) {
      if(empPos =='Manager'){
        eT= Manager("name", "nrc" , "gender" , "department" , "position" , "salary" , "email" , "phone");
      }

      else if(empPos =='Lecturer'){
        eT= Lecturer("name", "nrc" , "gender" , "department" , "position" , "salary" , "email" , "phone");
      }

      else if(empPos =='Supervisor'){
        eT= Supervisor("name", "nrc" , "gender" , "department" , "position" , "salary" , "email" , "phone");
      }

      else {
        eT= Director("name", "nrc" , "gender" , "department" , "position" ,"salary" , "email" , "phone");

      }
    }
    else{
      eT = Nothing("name", "nrc" , "gender" , "department" , "position" , "salary" , "email" , "phone");
    }
    return eT;
    }
  }






class MyDataAccess{
  static List<Employee> collection=List.empty(growable: true);
  int index = 0;

  get ans => null;

  get position => null;


  List<Employee> getData(){
    return collection;
  }

  int saveData(Employee em){
    collection.add(em);
    return collection.length;
  }

  bool searchData(String searchname){
    bool ans=false;
    for(int i=0;i<collection.length;i++) {
      Employee em = collection[i];
      if(em.name==searchname){
        index = i;
        ans=true;
        return ans;
      }
    }
    return ans;
  }


  int hcount(){
    int count=0;
    for(int i=0;i<collection.length;i++){
      Employee emp=collection[i];
      if(emp.department=='HR'){
        count++;
      }
    }
    return count;
  }

  int acount(){
    int count=0;
    for (int i=0;i<collection.length;i++){
      Employee emp=collection[i];
      if(emp.department=='Academic'){
        count++;
      }
    }
    return count;
  }

  int fcount(){
    int count=0;
    for (int i=0;i<collection.length;i++){
      Employee emp=collection[i];
      if(emp.department=='Finance'){
        count++;
      }
    }
    return count;
  }

  int mcount(){
    int count=0;
    for (int i=0;i<collection.length;i++){
      Employee emp=collection[i];
      if(emp.department=='Marketing'){
        count++;
      }
    }
    return count;
  }

}







