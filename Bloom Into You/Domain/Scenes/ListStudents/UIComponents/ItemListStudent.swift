//
//  ItemListStudent.swift
//  Bloom Into You
//
//  Created by Hafizh Mo on 22/08/23.
//

import SwiftUI

struct ItemListStudent: View {
  let name: String
  let age: Int

  var body: some View {
    HStack {
      VStack(alignment: .leading) {
        Text(name)
          .font(.headline)
        Text("\(age)")
          .font(.subheadline)
      }
      Spacer()
    }
    .padding()
  }
}

struct ItemListStudent_Previews: PreviewProvider {
  static var previews: some View {
    ItemListStudent(name: "Yuu", age: 16)
  }
}
