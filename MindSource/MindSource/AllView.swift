//
//  AllView.swift
//  PsycheSource
//
//  Created by Michael Murphy on 3/17/21.
//

import SwiftUI
import SwiftUICharts

struct AllView: View {
    var body: some View {
        VStack {
        
            MultiLineChartView(data: [(emotionArray, GradientColors.green),
                (staminaArray, GradientColors.purple),
                (humorArray, GradientColors.orngPink),
                (logicArray, GradientColors.prplNeon),
                (anxietyArray, GradientColors.prplPink)], title: "History")
            Spacer().layoutPriority(1)
        }
    }
}

struct AllView_Previews: PreviewProvider {
    static var previews: some View {
        AllView()
            .environment(\EnvironmentValues.colorScheme, ColorScheme.dark)
    }
}
