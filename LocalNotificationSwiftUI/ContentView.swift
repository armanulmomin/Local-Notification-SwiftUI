//
//  ContentView.swift
//  LocalNotificationSwiftUI
//
//  Created by Arman on 5/8/25.
//

import SwiftUI
import UserNotifications

class NotificationManager{
    static let instance = NotificationManager()
    func requestAuthorization(){
        let option: UNAuthorizationOptions = [.alert, .badge, .sound]
        UNUserNotificationCenter.current().requestAuthorization(options: option) { (granted, error) in
            if let error = error {
                print("Permission \(error)")
            } else {
                print("Success")
            }
        }
    }
    
    func scheduleNotification() {
           
           
           let content = UNMutableNotificationContent()
           content.title = "This is a notification!"
           content.subtitle = "Module is complete"
           content.sound = .default
           content.badge = 1
                   
           
           let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5.0, repeats: false)

           
           
           let request = UNNotificationRequest(
               identifier: UUID().uuidString,
               content: content,
               trigger: trigger)
           UNUserNotificationCenter.current().add(request)

       }
    
}

struct ContentView: View {
   
    var body: some View {
        VStack {
            Button("Request permission"){
                NotificationManager.instance.requestAuthorization()
            }
            Button("Schedule notification"){
                NotificationManager.instance.scheduleNotification()
            }
        }
        .onAppear{
            UIApplication.shared.applicationIconBadgeNumber = 0
        }
    }
}

#Preview {
    ContentView()
}
