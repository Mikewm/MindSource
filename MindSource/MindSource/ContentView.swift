//
//  ContentView.swift
//  Testie2
//
//  Created by Michael Murphy on 11/20/19.
//  Copyright © 2019 Michael Murphy. All rights reserved.
//
import SwiftUI
import Combine
import Foundation
import SwiftUICharts
struct ContentView: View {
    @EnvironmentObject var settings : UserSettings
    
    func storeValues() {
        dateArray.append(self.settings.date)
        emotionArray.append(settings.emotion)
        staminaArray.append(settings.stamina)
        humorArray.append(settings.humor)
        logicArray.append(settings.logic)
        anxietyArray.append(settings.anxiety)

        defaults.set(dateArray, forKey: "DATE")
        defaults.set(emotionArray, forKey: "Emotion")
        defaults.set(staminaArray, forKey: "Stamina")
        defaults.set(humorArray, forKey: "Humor")
        defaults.set(logicArray, forKey: "Logic")
        defaults.set(anxietyArray, forKey: "Anxiety")
    }
    
    var body: some View {
        Form {
            
        ZStack {
          
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                Text("MindSource")
                    .font(.title)
                    .bold()
                    .foregroundColor(.blue)
                    .layoutPriority(4)
                Text("Daily Recording")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.blue)
                Divider()
                Text("Emotion")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.green)
                HStack {
                    Image(systemName:  "hand.thumbsdown")
                        .resizable()
                        .frame(width: 25.0, height: 25.0)
                        .foregroundColor(.red)
                        
                    Slider(value: $settings.emotion, in: 0...100, step: 0.000001)
                        .padding(10)
                        .accentColor(.green)
                        .background(Capsule().stroke(Color.green, lineWidth: 1))
                    Image(systemName:  "hand.thumbsup")
                        .resizable()
                        .frame(width: 25.0, height: 25.0)
                        .foregroundColor(.green)
                }
                .padding([.horizontal])
                Divider()
                Text("Stamina")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.purple)
                VStack {
                    
                    HStack {
                        Image(systemName:  "hand.thumbsdown")
                            .resizable()
                            .frame(width: 25.0, height: 25.0)
                            .foregroundColor(.red)
                        Slider(value: $settings.stamina, in: 0...100, step: 0.000001)
                            .padding(10)
                            .accentColor(.purple)
                            .background(Capsule().stroke(Color.purple, lineWidth: 1))
                        Image(systemName:  "hand.thumbsup")
                            .resizable()
                            .frame(width: 25.0, height: 25.0)
                            .foregroundColor(.green)
                    }
                    .padding([.horizontal])
                    Divider()
                    Text("Humor")
                        .font(.caption)
                        .bold()
                        .foregroundColor(.orange)
                    HStack {
                        Image(systemName:  "hand.thumbsdown")
                            .resizable()
                            .frame(width: 25.0, height: 25.0)
                            .foregroundColor(.red)
                        Slider(value: $settings.humor, in: 0...100, step: 0.000001)
                            .padding(10)
                            .accentColor(.orange)
                            .background(Capsule().stroke(Color.orange, lineWidth: 1))
                        Image(systemName:  "hand.thumbsup")
                            .resizable()
                            .frame(width: 25.0, height: 25.0)
                            .foregroundColor(.green)
                    }
                    .padding([.horizontal])
                    Divider()
                }
                VStack {
                    Text("Logic")
                        .font(.caption)
                        .bold()
                        .foregroundColor(.yellow)
                    HStack {
                        Image(systemName:  "hand.thumbsdown")
                            .resizable()
                            .frame(width: 25.0, height: 25.0)
                            .foregroundColor(.red)
                        Slider(value: $settings.logic, in: 0...100, step: 0.000001)
                            .padding(10)
                            .accentColor(.yellow)
                            .background(Capsule().stroke(Color.yellow, lineWidth: 1))
                        Image(systemName:  "hand.thumbsup")
                            .resizable()
                            .frame(width: 25.0, height: 25.0)
                            .foregroundColor(.green)
                    }
                    .padding([.horizontal])
                    Divider()
                    Text("Anxiety")
                        .font(.caption)
                        .bold()
                        .foregroundColor(.red)
                    HStack {
                        Image(systemName:  "hand.thumbsup")
                            .resizable()
                            .frame(width: 25.0, height: 25.0)
                            .foregroundColor(.green)
                        Slider(value: $settings.anxiety, in: 0...100, step: 0.000001)
                            .padding(10)
                            .accentColor(.red)
                            .background(Capsule().stroke(Color.red, lineWidth: 1))
                        Image(systemName:  "hand.thumbsdown")
                            .resizable()
                            .frame(width: 25.0, height: 25.0)
                            .foregroundColor(.red)
                    }
                    .padding([.horizontal])
                    Divider()
                    Button(action: storeValues) {
                        Text("Update")
                            .bold()
                            .foregroundColor(.blue)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color.green, lineWidth: 2)
                            )}
                    Spacer().layoutPriority(1)
                    }
                }
            }
        }
    }
}


struct FirstView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
            .environment(\EnvironmentValues.colorScheme, ColorScheme.dark)
    }
}
