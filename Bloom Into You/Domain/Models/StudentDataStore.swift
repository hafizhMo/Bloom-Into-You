//
//  StudentDataStore.swift
//  Bloom Into You
//
//  Created by Hafizh Mo on 22/08/23.
//

import Foundation

class StudentDataStore: ObservableObject {
  @Published var students: [Student] = []
}

#if DEBUG
extension StudentDataStore {
  static var sample: StudentDataStore {
    let model = StudentDataStore()
    model.students = [
      Student(name: "Yuu", age: 16),
      Student(name: "Touko", age: 17),
      Student(name: "Sayaka", age: 17)
    ]
    
    return model
  }
}
#endif
