import 'package:flutter/cupertino.dart';

class EmployeeData{
  String name='';
  String gender='';
  String nrc='';
  String email='';
  String department='';
  String position='';
  int year=0;
  int salary=0;

  EmployeeData(
      this.name,
      this.gender,
      this.nrc,
      this.email,
      this.department,
      this.position,
      this.year,
      this.salary,);

  int calculate(int salary, bool att, bool pun, bool yearly, int year){
    if(att== true){
      salary = salary+20000;
    }else{salary = salary+0;}

    if(pun == true){
      salary = salary+10000;
    }else{salary = salary+0;}

    if(yearly==true){
      salary = salary+(year*50000);
    }else{salary = salary+0;}

    return salary;
  }
}

class Manager implements EmployeeData{

  @override
  String name='';
  @override
  String gender='';
  @override
  String email='';
  @override
  String nrc='';
  @override
  String department='';
  @override
  String position='';
  @override
  int salary=0;
  @override
  int year=0;

  @override
  int calculate(int salary, bool att, bool pun, bool yearly, int year) {
    if(att== true){
      salary = salary+20000;
    }else{salary = salary+0;}

    if(pun == true){
      salary = salary+10000;
    }else{salary = salary+0;}

    if(yearly==true){
      salary = salary+(year*50000);
    }else{salary = salary+0;}

    return salary;
  }
}
class Assistant implements EmployeeData{
  @override
  String department='';

  @override
  String email='';

  @override
  String gender='';

  @override
  String name='';

  @override
  String nrc='';

  @override
  String position='';

  @override
  int salary=0;

  @override
  int year=0;

  @override
  int calculate(int salary, bool att, bool pun, bool yearly, int year) {
    if(att== true){
      salary = salary+20000;
    }else{salary = salary+0;}

    if(pun == true){
      salary = salary+10000;
    }else{salary = salary+0;}

    if(yearly==true){
      salary = salary+(year*50000);
    }else{salary = salary+0;}

    return salary;
  }

}
class Developer implements EmployeeData{
  @override
  String department='';

  @override
  String email='';

  @override
  String gender='';

  @override
  String name='';

  @override
  String nrc='';

  @override
  String position='';

  @override
  int salary=0;

  @override
  int year=0;

  @override
  int calculate(int salary, bool att, bool pun, bool yearly, int year) {
    if(att== true){
      salary = salary+20000;
    }else{salary = salary+0;}

    if(pun == true){
      salary = salary+10000;
    }else{salary = salary+0;}

    if(yearly==true){
      salary = salary+(year*50000);
    }else{salary = salary+0;}

    return salary;
  }

}
class Accountant implements EmployeeData{
  @override
  String department='';

  @override
  String email='';

  @override
  String gender='';

  @override
  String name='';

  @override
  String nrc='';

  @override
  String position='';

  @override
  int salary=0;

  @override
  int year=0;

  @override
  int calculate(int salary, bool att, bool pun, bool yearly, int year) {
    if(att== true){
      salary = salary+20000;
    }else{salary = salary+0;}

    if(pun == true){
      salary = salary+10000;
    }else{salary = salary+0;}

    if(yearly==true){
      salary = salary+(year*50000);
    }else{salary = salary+0;}

    return salary;
  }

}
class Other implements EmployeeData{
  @override
  String department='';

  @override
  String email='';

  @override
  String gender='';

  @override
  String name='';

  @override
  String nrc='';

  @override
  String position='';

  @override
  int salary=0;

  @override
  int year=0;

  @override
  int calculate(int salary, bool att, bool pun, bool yearly, int year) {
    if(att== true){
      salary = salary+20000;
    }else{salary = salary+0;}

    if(pun == true){
      salary = salary+10000;
    }else{salary = salary+0;}

    if(yearly==true){
      salary = salary+(year*50000);
    }else{salary = salary+0;}

    return salary;
  }

}

class Factory{
  EmployeeData getEmp(String emptype){
    EmployeeData e;
    if(emptype=='Manager'){
      e= new Manager();
      return e;
    }
    else if(emptype=='Assistant'){
      e= new Assistant();
      return e;
    }
    else if(emptype=='Accountant'){
      e= new Accountant();
      return e;
    }
    else if(emptype=='Developer'){
      e= new Developer();
      return e;
    }else{
      e= new Other();
      return e;
    }
  }
}

class DataAccess {
  static List<EmployeeData> collection = List.empty(growable: true);
  List<EmployeeData> getData() {
    return collection;
  }

  int saveData(EmployeeData ed) {
    collection.add(ed);
    return collection.length;
  }

  bool searchData(String searchname){
    bool ans=false;
    for(int i=0; i<collection.length;i++){
      EmployeeData ed = collection[i];
      if(ed.name==searchname) {
        ans = true;
        return ans;
      }
    }
    return ans;
  }

  int countIT(){
    int c = 0;
    for(int i=0; i<collection.length;i++){
      EmployeeData ed = collection[i];
      if(ed.department=='IT'){
        c++;
      }
    }
    return c;
  }
  int countFN(){
    int c = 0;
    for(int i=0; i<collection.length;i++){
      EmployeeData ed = collection[i];
      if(ed.department=='Finance'){
        c++;
      }
    }
    return c;
  }
  int countSM(){
    int c = 0;
    for(int i=0; i<collection.length;i++){
      EmployeeData ed = collection[i];
      if(ed.department=='Sales & Marketing'){
        c++;
      }
    }
    return c;
  }
  int countHR(){
    int c = 0;
    for(int i=0; i<collection.length;i++){
      EmployeeData ed = collection[i];
      if(ed.department=='Human Resources'){
        c++;
      }
    }
    return c;
  }
  int total(){
    return collection.length;
  }

  int calculate(int salary, bool att, bool pun, bool yearly, int year){
    if(att== true){
      salary = salary+20000;
    }else{salary = salary+0;}

    if(pun == true){
      salary = salary+10000;
    }else{salary = salary+0;}

    if(yearly==true){
      salary = salary+(year*50000);
    }else{salary = salary+0;}

    return salary;
  }
  int attendancebonus(bool att){
    if(att== true){
      return 20000;
    }else{
      return 0;
    }
  }
  int punctualbonus(bool pun){
    if(pun== true){
      return 10000;
    }else{
      return 0;
    }
  }
  int yearlybonus(bool yearly, int year){
    int sum = 0;
    if(yearly== true){
      sum = 50000*year;
      return sum;
    }else{
      return 0;
    }
  }

}



