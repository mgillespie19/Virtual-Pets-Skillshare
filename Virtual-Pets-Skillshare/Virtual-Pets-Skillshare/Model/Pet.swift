//
//  Pet.swift
//  Virtual-Pets-Skillshare
//
//  Created by Max Gillespie on 9/7/20.
//  Copyright © 2020 Max Gillespie. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

class Pet: Identifiable {
    var happiness: Int
    var foodLevel: Int
    var type: Animal
    var image: UIImage
    var background: Color
    
    enum Animal {
        case dog
        case cat
        case parrot
        case fish
    }
    
    // Init
    init(happinessLevel: Int = 0, foodLevel: Int = 0, type:Animal = .dog) {
        print("init called for pet")
        self.happiness = happinessLevel
        self.foodLevel = happinessLevel
        self.type = type
        
        switch type {
        case .dog:
            image = UIImage(named: "Dog")!
            background = Color(red: 1, green: 0.46, blue: 0.46)
        case .cat:
            image = UIImage(named: "Cat")!
            background = Color(red: 0.57, green: 0.76, blue: 1)
        case .parrot:
            image = UIImage(named: "Bird")!
            background = Color(red: 1, green: 1, blue: 0.65)
        case .fish:
            image = UIImage(named: "Fish")!
            background = Color(red: 0.99, green: 0.77, blue: 1)
        }
    }
    
    // Functions
    func play() {
        if (foodLevel > 0 && happiness < 10) {
            happiness += 1
            foodLevel -= 1
        }
    }
    
    func feed() {
        if (foodLevel < 10) {
            foodLevel += 1
        }
    }
}

