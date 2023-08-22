//
//  ListStudentsConfigurator.swift
//  Bloom Into You
//
//  Created by Hafizh Mo on 22/08/23.
//

import SwiftUI

extension ListStudentsView {
  func configureView() -> some View {
    var view = self
    let interactor = ListStudentsInteractor()
    let presenter = ListStudentsPresenter()
    view.interactor = interactor
    interactor.presenter = presenter
    presenter.view = view
    
    return view
  }
}
