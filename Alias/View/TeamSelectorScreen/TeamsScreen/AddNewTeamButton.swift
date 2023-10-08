//
//  AddNewTeamButton.swift
//  Alias
//
//  Created by Roman on 30/09/2023.
//

import SwiftUI

struct AddNewTeamButton: View {
    var body: some View {
        NavigationLink(destination: AddTeamView()) {
            Image(systemName: "plus")
                .font(.title.weight(.semibold))
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .clipShape(Circle())
                .shadow(radius: 4, x: 0, y: 4)
            
        }
    }
}
