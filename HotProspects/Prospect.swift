//
//  Prospect.swift
//  HotProspects
//
//  Created by Ken Muyesu on 03/03/2022.
//

import SwiftUI


class Prospect: Identifiable, Codable {
    var id = UUID()
    var name = "Anon"
    var emailAddress = ""
    var isContacted = false
}

@MainActor class Prospects: ObservableObject {
    @Published var people: [Prospect]
    
    init() {
        self.people = []
    }
}
