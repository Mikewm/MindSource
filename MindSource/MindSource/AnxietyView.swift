//
//  AnxietyView.swift
//  PsycheSource
//
//  Created by Michael Murphy on 3/16/21.
//

import SwiftUI
import SwiftUICharts

struct AnxietyView: View {
    var body: some View {
        LineChartView(data: anxietyArray, title: "Anxiety")
            .padding()
    }
}

struct AnxietyView_Previews: PreviewProvider {
    static var previews: some View {
        AnxietyView()
            .environment(\EnvironmentValues.colorScheme, ColorScheme.dark)
    }
}
