//
//  StartButton.swift
//  Alias
//
//  Created by Roman on 10/09/2023.
//

import SwiftUI

struct StartButton: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                TeamSelectorView(items: AddNewTeam.teams).navigationBarBackButtonHidden(true)
            } label: {
                Text("Game")
                .frame(width: Constants.DisplaySize.screenWidth / 1.2, height: Constants.DisplaySize.screenHeight / 13)
                .font(.custom(.buttonFont, size: 40))
                .foregroundColor(.gray)
                .background(Color("ButtonColor"))
                .cornerRadius(50)
                .padding()
            }
        }
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
    }
}
