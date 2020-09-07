//
//  ProgressBar.swift
//  Virtual-Pets-Skillshare
//
//  Created by Max Gillespie on 9/7/20.
//  Copyright © 2020 Max Gillespie. All rights reserved.
//

import SwiftUI

struct ProgressBar: View {
    var barWidth: CGFloat
    var barHeight: CGFloat
    @Binding var barPct: CGFloat
    
    var body: some View {
        ZStack (alignment: .leading) {
            Rectangle()
                .foregroundColor(.black)
                .frame(width: barWidth, height: barHeight)
                .opacity(0.1)
                .padding()
            Rectangle()
                .foregroundColor(.black)
                .frame(width: (barWidth * barPct), height: barHeight)
                .padding()
                .animation(.easeInOut)
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    @State static var pct: CGFloat = 0
    
    static var previews: some View {
        ProgressBar(barWidth: 380, barHeight: 40, barPct: $pct)
    }
}
