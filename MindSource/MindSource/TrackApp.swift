//
//  TrackApp.swift
//  Daily Tracker
//
//  Created by Michael Murphy on 2/8/21.
//
import Combine
import SwiftUI
import Foundation
@main
struct TrackApp: App {
    @EnvironmentObject var settings : UserSettings
    var body: some Scene {
        WindowGroup {
            NavigationView {
                Daily_TrackerApp()
                    .environmentObject(UserSettings(date: Date(), emotion: 50.0, stamina: 50.0, humor: 50.0, logic: 50.0, anxiety: 50.0))
            }
            
        }
    }
}
