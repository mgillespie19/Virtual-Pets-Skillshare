//
//  ActionButton.swift
//  Virtual-Pets-Skillshare
//
//  Created by Max Gillespie on 9/7/20.
//  Copyright © 2020 Max Gillespie. All rights reserved.
//

import SwiftUI

struct ActionButton: View {
    
    var title: String
    var barWidth: CGFloat
    
    var body: some View {
        Text(title)
            .frame(width: barWidth, height: 50)
            .background(Color.white)
            .cornerRadius(4)
            .shadow(radius: 2)
    }
}
