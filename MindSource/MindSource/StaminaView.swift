//
//  StaminaView.swift
//  MindSource
//
//  Created by Michael Murphy on 3/31/21.
//

import SwiftUI
import SwiftUICharts

struct StaminaView: View {
    var body: some View {
        LineChartView(data: staminaArray, title: "Stamina")
            .padding()
    }
}

struct StaminaView_Previews: PreviewProvider {
    static var previews: some View {
        StaminaView()
            .environment(\EnvironmentValues.colorScheme, ColorScheme.dark)
    }
}
