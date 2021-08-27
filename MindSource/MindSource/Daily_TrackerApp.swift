//
//  Daily_TrackerApp.swift
//  Daily Tracker
//
//  Created by Michael Murphy on 1/4/21.
//

import SwiftUI
import Combine

struct Daily_TrackerApp: View {

  @EnvironmentObject var settings: UserSettings
  
    var body: some View {
        ZStack (alignment: .topTrailing ) {
          
            Color.black.edgesIgnoringSafeArea(.all)
            TabView {
                    ContentView()
                    .tabItem {
                        Label("Daily Recording", systemImage: "waveform.circle")
                    }

                    GraphView0()
                    .tabItem {
                        Label("History", systemImage: "doc.text.below.ecg")
                    }
            }
        }
    }
}

struct Daily_TrackerApp_Previews: PreviewProvider {
    
    static var previews: some View {
        Daily_TrackerApp().ignoresSafeArea()
            .environment(\EnvironmentValues.colorScheme, ColorScheme.dark)
    }
}
