//
//  ContentView.swift
//  HotProspects
//
//  Created by Ken Muyesu on 28/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("example")
            .interpolation(.none)
            .resizable()
            .scaledToFit()
            .frame(maxHeight: .infinity)
            .background(.black)
            .ignoresSafeArea()
    }
    
//    @State private var output = ""
//
//    var body: some View {
//        Text(output)
//            .task {
//                await fetchReadings()
//            }
//}
    
//    func fetchReadings() async {
////        do {
////            let url = URL(string: "https://hws.dev/readings.json")!
////            let (data, _) = try await URLSession.shared.data(from: url)
////            let readings = try JSONDecoder().decode([Double].self, from: data)
////            output = "Found \(readings.count) readings"
////        } catch {
////            print("Download error")
////        }
//
//        let fetchTask = Task { () -> String in
//            let url = URL(string: "https://dev/readings.json")!
//            let (data, _) = try await URLSession.shared.data(from: url)
//            let readings = try JSONDecoder().decode([Double].self, from: data)
//            return "Found \(readings.count) readings"
//        }
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
