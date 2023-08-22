//
//  ListStudentsInteractor.swift
//  Bloom Into You
//
//  Created by Hafizh Mo on 22/08/23.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol ListStudentsBusinessLogic {
  func loadStudents(request: ListStudents.LoadStudents.Request)
}

class ListStudentsInteractor {
  var presenter: ListStudentsPresentationLogic?
}

extension ListStudentsInteractor: ListStudentsBusinessLogic {
  func loadStudents(request: ListStudents.LoadStudents.Request) {
    let student = Student(name: "Yuu", age: 16)
    let response = ListStudents.LoadStudents.Response(student: [student])
    presenter?.presentStudents(response: response)
  }
}