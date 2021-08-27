//
//  EmotionView.swift
//  PsycheSource
//
//  Created by Michael Murphy on 3/16/21.
//

import SwiftUI
import SwiftUICharts

struct EmotionView: View {
    
    var body: some View {
        LineChartView(data: emotionArray, title: "Emotion")
            .padding()
        }
    }

struct EmotionView_Previews: PreviewProvider {
    static var previews: some View {
        EmotionView()
            .environment(\EnvironmentValues.colorScheme, ColorScheme.dark)
    }
}
