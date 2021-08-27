//
//  ReasoningView.swift
//  MindSource
//
//  Created by Michael Murphy on 3/16/21.
//

import SwiftUI
import SwiftUICharts

struct LogicView: View {
    var body: some View {
        LineChartView(data: logicArray, title: "Logic")
            .padding()
    }
}

struct LogicView_Previews: PreviewProvider {
    static var previews: some View {
        LogicView()
            .environment(\EnvironmentValues.colorScheme, ColorScheme.dark)
    }
}
