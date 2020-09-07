//
//  PetViewModel.swift
//  Virtual-Pets-Skillshare
//
//  Created by Max Gillespie on 9/7/20.
//  Copyright © 2020 Max Gillespie. All rights reserved.
//

import Foundation
import UIKit

class PetViewModel: ObservableObject {
    @Published var selectedPet: Pet
    
    private let pets: [String: Pet] = [
        "Dog" : Pet(happinessLevel: 0, foodLevel: 0, type: .dog),
        "Cat" : Pet(happinessLevel: 0, foodLevel: 0, type: .cat),
        "Parrot" : Pet(happinessLevel: 0, foodLevel: 0, type: .parrot),
        "Fish" : Pet(happinessLevel: 0, foodLevel: 0, type: .fish)
    ]
    
    init() {
        selectedPet = pets["Dog"]!
    }
    
    func feed() {
        selectedPet.feed()
    }
    
    func play() {
        selectedPet.play()
    }
    
    func changeSelection(key: String) {
        selectedPet = pets[key] ?? Pet(happinessLevel: 0, foodLevel: 0, type: .dog)
    }
}
