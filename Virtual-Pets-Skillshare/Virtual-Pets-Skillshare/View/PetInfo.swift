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
                
                ZStack (alignment: .leading) {
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(width: barWidth, height: 30)
                        .opacity(0.1)
                        .padding()
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(width: (barWidth * foodPct), height: 30)
                        .padding()
                        .animation(.easeInOut)
                }
            }
            .frame(height: screenHeight / 2)
            
            Spacer()
            
            ZStack (alignment: .leading) {
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: barWidth, height: 30)
                    .opacity(0.1)
                    .padding()
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: (barWidth * foodPct), height: 30)
                    .padding()
                    .animation(.easeInOut)
            }
                
            Button(action: {
                print("feed pet")
            }, label: {
                Text("Feed")
                    .frame(width: barWidth, height: 50)
                    .background(Color.white)
                    .cornerRadius(4)
                    .shadow(radius: 2)
            })
                
            Button(action: {
                print("play with pet")
            }, label: {
                Text("Play")
                    .frame(width: barWidth, height: 50)
                    .background(Color.white)
                    .cornerRadius(4)
                    .padding()
                    .shadow(radius: 2)
            })
            
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
}

struct PetInfo_Previews: PreviewProvider {
    static var previews: some View {
        PetInfo()
    }
}
