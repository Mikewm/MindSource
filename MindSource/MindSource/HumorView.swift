//
//  HumorView.swift
//  MindSource
//
//  Created by Michael Murphy on 6/23/21.
//

import Foundation
import SwiftUI
import SwiftUICharts

struct HumorView: View {
    var body: some View {
        LineChartView(data: humorArray, title: "Humor")
            .padding()
    }
}

struct HumorView_Previews: PreviewProvider {
    static var previews: some View {
        HumorView()
            .environment(\EnvironmentValues.colorScheme, ColorScheme.dark)
    }
}
