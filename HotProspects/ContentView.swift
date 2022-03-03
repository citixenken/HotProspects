//
//  ContentView.swift
//  HotProspects
//
//  Created by Ken Muyesu on 28/02/2022.
//

import SamplePackage
import SwiftUI
import UserNotifications


struct ContentView: View {
    
    let possibleDigits = Array(1...99)
    
    var results: String {
        let selected = possibleDigits.random(7).sorted()
        let strings = selected.map(String.init) //converting selected strings to an array of strings -- stringified
        return strings.joined(separator: ", ")
    }
    var body: some View {
        
        Text(results)
        
//        VStack {
//            Button("Request Permission") {
//                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
//                    if success {
//                        print("Successful! All set.")
//                    } else if let error = error {
//                        print(error.localizedDescription)
//                    }
//                }
//            }
//            Button("Schedule Notification") {
//                let content = UNMutableNotificationContent()
//                content.title = "Feed the hunger within"
//                content.subtitle = "Stay hungry"
//                content.sound = UNNotificationSound.default
//
//                //show this notification five minutes from now
//                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
//
//                //choose a random identifier
//                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
//
//                //add our notiification request
//                UNUserNotificationCenter.current().add(request)
//
//            }
//        }
        
        
//        List {
//            Text("Baby Keem")
//                .swipeActions {
//                    Button {
//                        print("Hi!")
//                    } label: {
//                        Label("Send message", systemImage: "message")
//                    }
//                }
//                .swipeActions(edge: .leading) {
//                    Button {
//                        print("Hey!")
//                    } label: {
//                        Label("Pin", systemImage: "pin")
//                    }
//                    .tint(.mint)
//                }
//        }
        //        VStack {
        //            Text("Hello, CK!")
        //                .padding()
        //                .background(backgroundColor)
        //
        //            Text("Change Color")
        //                .padding()
        //                .contextMenu {
        //                    Button(role: .destructive){
        //                        backgroundColor = .red
        //                    } label: {
        //                        Label("Red", systemImage: "checkmark.circle.fill")
        //                            .foregroundColor(.red)
        //                    }
        //
        //                    Button {
        //                        backgroundColor = .green
        //                    } label: {
        //                        Label("Green", systemImage: "checkmark.circle.fill")
        //                            .foregroundColor(.green)
        //                    }
        //
        //                    Button {
        //                        backgroundColor = .blue
        //                    } label: {
        //                        Label("Blue", systemImage: "checkmark.circle.fill")
        //                            .foregroundColor(.blue)
        //                    }
        //
        //
        //                }
        //        }
        //        Image("example")
        //            .interpolation(.none)
        //            .resizable()
        //            .scaledToFit()
        //            .frame(maxHeight: .infinity)
        //            .background(.black)
        //            .ignoresSafeArea()
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
