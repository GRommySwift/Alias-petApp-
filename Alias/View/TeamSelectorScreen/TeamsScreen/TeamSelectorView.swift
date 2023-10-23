//
//  TeamSelectorView.swift
//  Alias
//
//  Created by Roman on 10/09/2023.
//

import SwiftUI

struct TeamSelectorView: View {
    
    @EnvironmentObject var addNewTeam: AddNewTeam
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color("BGColor").ignoresSafeArea()
                if addNewTeam.teams.isEmpty {
                    NoTeamTextAndImage()
                } else {
                    List {
                        
                        ForEach(addNewTeam.teams.indices, id: \.self) { item in
                            CardListRow(item: $addNewTeam.teams[item])
                        }
                        .onDelete(perform: deleteItem)
                        
                        
                    }.padding(EdgeInsets(top: 0, leading: -20, bottom: 0, trailing: -20))
                        .scrollContentBackground(.hidden)
                  NextScreenButton()
                        .position(x: Constants.DisplaySize.screenWidth * 0.85, y: Constants.DisplaySize.screenHeight * 0.83)
                }
                AddNewTeamButton()
                .position(x: Constants.DisplaySize.screenWidth * 0.5, y: Constants.DisplaySize.screenHeight * 0.83  )
                
            }
        }
    }
    func deleteItem(indexSet: IndexSet) {
            addNewTeam.teams.remove(atOffsets: indexSet)
    }
    
}
struct TeamSelectorView_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationStack {
            TeamSelectorView()
        }
        .environmentObject(AddNewTeam())
        .environmentObject(GameScreenViewModel())
        .environmentObject(AfterGameViewModel())
    }
}
