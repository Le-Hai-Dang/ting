import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';
import 'package:ting/service/database.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Employee extends StatefulWidget {
  const Employee({super.key});

  @override
  State<Employee> createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController ageController = new TextEditingController();
  TextEditingController locationController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee Form', style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Name', style: TextStyle(color: Colors.orange, fontSize: 20, fontWeight: FontWeight.bold),),
          Container(
            padding: EdgeInsets.only(left: 10),

            decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text('Age', style: TextStyle(color: Colors.orange, fontSize: 20, fontWeight: FontWeight.bold),),
          Container(
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: ageController,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text('Location', style: TextStyle(color: Colors.orange, fontSize: 20, fontWeight: FontWeight.bold),),
          Container(
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: locationController,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: () async{
            String Id = randomAlpha(10);
            Map<String, dynamic> employeeInfoMap = {
              'name': nameController.text,
              'age': ageController.text,
              'location': locationController.text,
            };
            await DatabaseMethods().addEmployeeDetails(employeeInfoMap, Id).then((value){
              Fluttertoast.showToast(
        msg: "Thêm nhân viên thành công",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
    );
            });
          }, 
          child: Center(
            child: Text('Add', 
            style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          )
        ],),
      ),
    );
  }
}