//
//  ListStudentsView.swift
//  Bloom Into You
//
//  Created by Hafizh Mo on 22/08/23.
//

import SwiftUI

protocol ListStudentsDisplayLogic {
  func displayStudents(viewModel: ListStudents.LoadStudents.ViewModel)
}

extension ListStudentsView: ListStudentsDisplayLogic {
  func displayStudents(viewModel: ListStudents.LoadStudents.ViewModel) {
    dataStore.students = viewModel.students
  }
  
  func fetchStudents() {
    let request = ListStudents.LoadStudents.Request()
    interactor?.loadStudents(request: request)
  }
  
}

struct ListStudentsView: View {
  var interactor: ListStudentsInteractor?
  
  @ObservedObject var dataStore = StudentDataStore()
  
  var body: some View {
    NavigationView {
      VStack {
        if !dataStore.students.isEmpty {
          ItemListStudent(name: dataStore.students.first!.name, age: dataStore.students.first!.age)
          Spacer()
        } else {
          Text("Data is empty!")
        }
      }
    }
    .onAppear {
      fetchStudents()
    }
  }
}

struct ListStudentsView_Previews: PreviewProvider {
  static var previews: some View {
    ListStudentsView()
  }
}
