//
//  PetInfo.swift
//  Virtual-Pets-Skillshare
//
//  Created by Max Gillespie on 9/7/20.
//  Copyright © 2020 Max Gillespie. All rights reserved.
//

import SwiftUI

struct PetInfo: View {
    
    @ObservedObject var viewModel: PetViewModel
    
    var screenHeight = UIScreen.main.bounds.height
    var barWidth = UIScreen.main.bounds.width * 0.9
    
    @State var foodPct: CGFloat = 0
    @State var happinessPct: CGFloat = 0
    
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                Rectangle()
                    .foregroundColor(viewModel.selectedPet.background)
                    .edgesIgnoringSafeArea(.top)
                
                VStack {
                    Spacer()
                    Image(uiImage: viewModel.selectedPet.image)
                        .resizable()
                        .frame(width: 120, height: 120)
                    Spacer()
                }
                
                ProgressBar(barWidth: barWidth, barHeight: 50, barPct: $happinessPct)
            }
            .frame(height: screenHeight / 2)
            
            Spacer()
            
            ProgressBar(barWidth: barWidth, barHeight: 30, barPct: $foodPct)
                
            Button(action: {
                self.viewModel.feed()
                self.updatePercents()
            }, label: {
                ActionButton(title: "Feed", barWidth: barWidth)
            }).padding()
                
            Button(action: {
                self.viewModel.play()
                self.updatePercents()
            }, label: {
                ActionButton(title: "Play", barWidth: barWidth)
            }).padding()
            
            Spacer()
            
            HStack {
                Button(action: { print("Select bird") },
                       label: { Text("Bird") })
                Spacer()
                Button(action: { print("Select bunny") },
                       label: { Text("Bunny") })
                Spacer()
                Button(action: { print("Select cat") },
                       label: { Text("Cat") })
                Spacer()
                Button(action: { print("Select dog") },
                       label: { Text("Dog") })
                Spacer()
                Button(action: { print("Select fish") },
                       label: { Text("Fish") })
            }
            .padding()
        }
    }
    
    private func updatePercents() {
        self.foodPct = CGFloat(self.viewModel.selectedPet.foodLevel) / 10
        self.happinessPct = CGFloat(self.viewModel.selectedPet.happiness) / 10
    }
}

struct PetInfo_Previews: PreviewProvider {
    static var previews: some View {
        PetInfo(viewModel: PetViewModel())
    }
}
