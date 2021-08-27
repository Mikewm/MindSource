//
//  Model.swift
//  Daily Tracker
//
//  Created by Michael Murphy on 2/8/21.
//

import Foundation
import Combine
import SwiftUI

class UserSettings: ObservableObject  {
    @Published var date: Date
    @Published var emotion: Double
    @Published var stamina: Double
    @Published var humor: Double
    @Published var logic: Double
    @Published var anxiety: Double
    
    init(date: Date, emotion: Double, stamina: Double, humor: Double, logic: Double, anxiety: Double) {
        self.date = date
        self.emotion = emotion
        self.stamina = stamina
        self.humor = humor
        self.logic = logic
        self.anxiety = anxiety
    }
}

var defaults = UserDefaults.standard
var dateArray = defaults.object(forKey: "DATE") as? [Date] ?? [Date]() // TBD
var emotionArray = defaults.object(forKey:"Emotion") as? [Double] ?? [Double]()
var staminaArray = defaults.object(forKey:"Stamina") as? [Double] ?? [Double]()
var humorArray = defaults.object(forKey:"Humor") as? [Double] ?? [Double]()
var logicArray = defaults.object(forKey:"Logic") as? [Double] ?? [Double]()
var anxietyArray = defaults.object(forKey:"Anxiety") as? [Double] ?? [Double]()
