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
    
    //reason why Prospect and Prospects are in the same file
    fileprivate(set) var isContacted = false
}

@MainActor class Prospects: ObservableObject {
    @Published var people: [Prospect]
    
    init() {
        self.people = []
    }
    
    func toggle(_ prospect: Prospect) {
        objectWillChange.send()
        prospect.isContacted.toggle()
    }
}
