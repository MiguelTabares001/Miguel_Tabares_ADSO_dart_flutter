/* 2. Realizar mediante funciones un programa que permita insertar, modificar, eliminar, consultar los datos de una lista. la lista debe ser la de una de su proyecto. */

import 'dart:io';

void main() {
  // Create an empty list to store the data
  List<String> data = [];

  // Function to insert data into the list
  void insertData() {
    print('Enter the data you want to insert:');
    String newData = stdin.readLineSync()!;
    data.add(newData);
    print('Data inserted successfully!');
  }

  // Function to modify data in the list
  void modifyData() {
    if (data.isEmpty) {
      print('The list is empty. Please insert data first.');
      return;
    }

    print('Enter the index of the data you want to modify:');
    int index = int.parse(stdin.readLineSync()!);

    if (index < 0 || index >= data.length) {
      print('Invalid index. Please enter a valid index.');
      return;
    }

    print('Enter the new data:');
    String newData = stdin.readLineSync()!;
    data[index] = newData;
    print('Data modified successfully!');
  }

  // Function to delete data from the list
  void deleteData() {
    if (data.isEmpty) {
      print('The list is empty. Please insert data first.');
      return;
    }

    print('Enter the index of the data you want to delete:');
    int index = int.parse(stdin.readLineSync()!);

    if (index < 0 || index >= data.length) {
      print('Invalid index. Please enter a valid index.');
      return;
    }

    data.removeAt(index);
    print('Data deleted successfully!');
  }

  // Function to query data from the list
  void queryData() {
    if (data.isEmpty) {
      print('The list is empty.');
      return;
    }

    print('The data in the list is:');
    for (String item in data) {
      print(item);
    }
  }

  // Display the menu
  while (true) {
    print('\nMenu:');
    print('1. Insert data');
    print('2. Modify data');
    print('3. Delete data');
    print('4. Query data');
    print('5. Exit');

    print('Enter your choice:');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        insertData();
        break;
      case 2:
        modifyData();
        break;
      case 3:
        deleteData();
        break;
      case 4:
        queryData();
        break;
      case 5:
        print('Exiting the program...');
        exit(0);
      default:
        print('Invalid choice. Please enter a valid choice.');
    }
  }
}







