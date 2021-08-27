//
//  GraphView0.swift
//  PsycheSource
//
//  Created by Michael Murphy on 3/16/21.
//

import SwiftUI
struct GraphView0: View {
    
    enum ContainedViewType: Int {
        case emotion,
             stamina,
             humor,
             logic,
             anxiety,
             all
    }
    @State private var returnedView = 0
    @State var containedViewType: ContainedViewType = .all
    @State var isPresented = false
    var body: some View {
        VStack {
            Text("MindSource")
                .font(.title)
                .bold()
                .foregroundColor(.blue)
                .layoutPriority(4)
            Text("History")
                .font(.caption)
                .bold()
                .foregroundColor(.blue)
           
            Picker(selection: $returnedView, label: Text("")) {
                Text("Emotion")
                    .font(.footnote)
                    .fontWeight(.thin)
                    .allowsTightening(true)
                    .tag(0)
                Text("Stamina")
                    .font(.footnote)
                    .fontWeight(.thin)
                    .allowsTightening(true)
                    .tag(1)
                Text("Humor")
                    .font(.footnote)
                    .fontWeight(.thin)
                    .allowsTightening(true)
                    .tag(2)
                Text("Logic")
                    .font(.footnote)
                    .fontWeight(.thin)
                    .allowsTightening(true)
                    .tag(3)
                Text("Anxiety")
                    .font(.footnote)
                    .fontWeight(.thin)
                    .allowsTightening(true)
                    .tag(4)
                Text("All")
                    .font(.footnote)
                    .fontWeight(.thin)
                    .allowsTightening(true)
                    .tag(5)
            }.pickerStyle(SegmentedPickerStyle())
            
            Divider()
           
            containedView(returnedView: returnedView)
            Divider()
            Button(action: { isPresented = true}) {
                Text("Clear History")
                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 20,  trailing: 20))
                    .font(.title3)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(30.0)
            }.alert(isPresented: $isPresented, content: { () in
                Alert(title: Text("Clear History?"),
                      message: Text("Are you sure you want to delete your history?"),
                      primaryButton: .destructive(Text("Delete"),
                      action: {clearTotals()}),
                      secondaryButton: .cancel(Text("No"),
                      action: { })
            )})
            Divider()
            Spacer()
        }
    }
    
    
    func containedView(returnedView: Int) -> AnyView {
        
        let containedViewType = ContainedViewType(rawValue: returnedView)
        switch containedViewType {
        case .emotion: return AnyView(EmotionView())
        case .stamina: return AnyView(StaminaView())
        case .humor: return AnyView(HumorView())
        case .logic: return AnyView(LogicView())
        case .anxiety: return AnyView(AnxietyView())
        case .all: return AnyView(AllView())
        default: return AnyView(EmotionView())
            
        }
    }
    
    func clearTotals() {
        dateArray.removeAll()
        emotionArray.removeAll()
        staminaArray.removeAll()
        humorArray.removeAll()
        logicArray.removeAll()
        anxietyArray.removeAll()
        defaults.set(dateArray, forKey: "DATE")
        defaults.set(emotionArray, forKey: "Emotion")
        defaults.set(staminaArray, forKey: "Stamina")
        defaults.set(humorArray, forKey: "Humor")
        defaults.set(logicArray, forKey: "Logic")
        defaults.set(anxietyArray, forKey: "Anxiety")
    }
}

struct GraphView0_Previews: PreviewProvider {
    static var previews: some View {
        GraphView0()
            .environment(\EnvironmentValues.colorScheme, ColorScheme.dark)
    }
}
