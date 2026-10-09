# Swift App Lifecycle Notifications

A UIKit practice project demonstrating how to observe iOS application lifecycle changes using `NotificationCenter`.

## Overview

This project implements a notification system that detects when an application enters the background and when it is about to return to the foreground. It logs these events to the Xcode debug console.

The interface also provides instructions to help users test the lifecycle transitions.

## Features

- Observe `UIApplication.didEnterBackgroundNotification`.
- Observe `UIApplication.willEnterForegroundNotification`.
- Log application lifecycle events to the Xcode console.
- Remove notification observers when the view controller is deallocated.
- Display instructions explaining how to test the notifications.

## Technologies

- Swift
- UIKit
- Storyboards
- NotificationCenter
- Auto Layout
- Xcode

## Project Structure

```text
SwiftAppLifecycleNotifications/
├── AppDelegate.swift
├── SceneDelegate.swift
├── AppLifecycleViewController.swift
├── Main.storyboard
└── Assets.xcassets/
```

## How It Works

1. The view controller registers observers when its view loads.
2. When the app enters the background, the console displays `App entered background`.
3. When the app is about to return to the foreground, the console displays `App will enter foreground`.
4. When the view controller is deallocated, its notification observers are removed.

## How to Run

1. Clone this repository.
2. Open `SwiftAppLifecycleNotifications.xcodeproj` in Xcode.
3. Select an iOS Simulator or a connected device.
4. Build and run the application.
5. Send the app to the background using the Home action.
6. Return to the app.
7. Check the Xcode debug console for the lifecycle messages.

## Learning Objectives

- Understand iOS application lifecycle notifications.
- Use `NotificationCenter` to observe system events.
- Implement notification handlers with Swift selectors.
- Manage observer registration and cleanup.
- Test application state transitions in the iOS Simulator.

## Author
Erik Valencia Cardona
