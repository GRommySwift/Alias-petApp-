//
//  AddTeamView.swift
//  Alias
//
//  Created by Roman on 11/09/2023.
//

import SwiftUI

struct AddTeamView: View {
    
    @State private var teamName: String = ""
    @State private var playerName1: String = ""
    @State private var playerName2: String = ""
    @State private var showAlert = false
    
    var body: some View {
        NavigationStack {
            ZStack {
               Color("BGColor").ignoresSafeArea()
                VStack {
                    TextField("Team Name", text: $teamName).extensionTextFieldView(roundedCornes: 12, startColor: .white, endColor: .purple)
                        .frame(width: Constants.DisplaySize.screenWidth - 70)
                        .padding(50)
                    TextField("Player Name 1", text: $playerName1).extensionTextFieldView(roundedCornes: 12, startColor: .white, endColor: .purple)
                        .frame(width: Constants.DisplaySize.screenWidth - 70)
                        .padding(20)
                    TextField("Player Name 2", text: $playerName2).extensionTextFieldView(roundedCornes: 12, startColor: .white, endColor: .purple)
                        .frame(width: Constants.DisplaySize.screenWidth - 70)

                     
                        NavigationLink {
                            TeamSelectorView(items: AddNewTeam.teams).navigationBarBackButtonHidden(true)
                        } label: {
                            Text("Save")
                                .font(.title.weight(.semibold))
                                .padding()
                                .background(Color.purple)
                                .foregroundColor(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 50))
                                .shadow(radius: 4, x: 0, y: 4)
                        }.simultaneousGesture(TapGesture().onEnded{
                            AddNewTeam().addNewTeam(teamName: teamName, playerName1: playerName1, playerName2: playerName2)
                        })
                    
                        
                }.position(x: Constants.DisplaySize.screenWidth * 0.5, y: Constants.DisplaySize.screenHeight * 0.3 )
            }
        }
    }
}

struct AddTeamView_Previews: PreviewProvider {
    static var previews: some View {
        AddTeamView()
    }
}

extension TextField {

    func extensionTextFieldView(roundedCornes: CGFloat, startColor: Color,  endColor: Color) -> some View {
        self
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [startColor, endColor]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(roundedCornes)
            .shadow(color: .purple, radius: 10)
        
    }
}
