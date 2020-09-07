//
//  ContentView.swift
//  Virtual-Pets-Skillshare
//
//  Created by Max Gillespie on 9/7/20.
//  Copyright © 2020 Max Gillespie. All rights reserved.
//

import SwiftUI

struct PetView: View {
    var body: some View {
        PetInfo(viewModel: PetViewModel())
    }
}

struct PetView_Previews: PreviewProvider {
    static var previews: some View {
        PetView()
    }
}
