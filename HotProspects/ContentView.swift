//
//  ContentView.swift
//  HotProspects
//
//  Created by Ken Muyesu on 28/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab = "Print"
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Tab One")
                .onTapGesture {
                    selectedTab = "Display"
                }
                .tabItem {
                    Label("Print", systemImage: "printer")
                }
                .tag("Print")
            Text("Tab Two")
                .tabItem{
                    Label("Display", systemImage: "display")
                }
                .tag("Display")
            Text("Tab Three")
                .tabItem{
                    Label("Scan", systemImage: "scanner")
                }
                .tag("Scan")
            Text("Tab Four")
                .tabItem{
                    Label("Server Rack", systemImage: "server.rack")
                }
                .tag("Server Rack")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
