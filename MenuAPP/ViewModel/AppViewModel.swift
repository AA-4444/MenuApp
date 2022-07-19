//
//  AppViewModel.swift
//  MenuAPP
//
//  Created by Алексей Зарицький on 03.07.2022.
//

import SwiftUI

class AppViewModel: ObservableObject {
   // MARK: Properties...
    @Published var currentTab: Tab = .home
    // MARK: home properties...
    @Published var currentMenu: String = "ALL"
    //MARK: Detail View properties....
    @Published var showDetailView: Bool = false
    @Published var currentActiveItem:  Staff?
}

