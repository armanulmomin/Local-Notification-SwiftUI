# 📱 LocalNotificationSwiftUI

A simple SwiftUI application that demonstrates how to **request permission** for local notifications and **schedule notifications** based on **time**, **calendar events**, and **location**. This project uses the `UserNotifications` framework.

## ✨ Features

- 🔐 Request local notification authorization from the user.
- ⏰ Schedule notifications based on:
  - Time interval (after seconds/minutes)
  - Calendar (specific date and time)
  - Location (entering or exiting a geographic region)
- 🎯 Demonstrates real device capabilities and limitations.
- 💡 Clean and modular code using SwiftUI best practices.

## 📸 Screenshots

<img width="450" height="975" alt="Screenshot 2025-08-05 at 6 19 20 AM" src="https://github.com/user-attachments/assets/5df9e472-8179-431d-8601-ced3d25aabc0" />
<img width="459" height="977" alt="Screenshot 2025-08-05 at 6 19 42 AM" src="https://github.com/user-attachments/assets/b6596e34-ec2f-4010-b803-ef407e3fe4e1" />


## 🧩 Requirements

- iOS 15.0+
- Xcode 13+
- SwiftUI
- Real device for **location-based notifications** (simulator not supported)

## 🛠️ How It Works

### 1. Request Notification Authorization

```swift
import UserNotifications

UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
    if granted {
        print("Permission granted ✅")
    } else {
        print("Permission denied ❌")
    }
}
