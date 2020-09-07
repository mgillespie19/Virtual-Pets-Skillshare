//
//  PetInfo.swift
//  Virtual-Pets-Skillshare
//
//  Created by Max Gillespie on 9/7/20.
//  Copyright © 2020 Max Gillespie. All rights reserved.
//

import SwiftUI

struct PetInfo: View {
    
    var screenHeight = UIScreen.main.bounds.height
    var barWidth = UIScreen.main.bounds.width * 0.9
    
    @State var foodPct: CGFloat = 0.3
    @State var happinessPct: CGFloat = 0.5
    
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                Rectangle()
                    .foregroundColor(Color(red: 1, green: 0.46, blue: 0.46))
                    .edgesIgnoringSafeArea(.top)
                
                VStack {
                    Spacer()
                    Image("Bunny")
                        .resizable()
                        .frame(width: 120, height: 120)
                    Spacer()
                }
            }
            .frame(height: screenHeight / 2)
            
            Text("food level: \(foodPct)")
            
            Spacer()
        }
    }
}

struct PetInfo_Previews: PreviewProvider {
    static var previews: some View {
        PetInfo()
    }
}
