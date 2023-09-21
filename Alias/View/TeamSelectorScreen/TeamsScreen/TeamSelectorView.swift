//
//  TeamSelectorView.swift
//  Alias
//
//  Created by Roman on 10/09/2023.
//

import SwiftUI

struct TeamSelectorView: View {
    
    @ObservedObject var items = AddNewTeam()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BGColor").ignoresSafeArea()
                if items.teams.count == 0 {
                        NoTeamTextAndImage()
                    } else {
                        List(items.teams.indices, id: \.self) { itemIndex in
                            CardListRow(item: self.$items.teams[itemIndex])
                                .listRowBackground(Color("BGColor"))
                        }.padding(EdgeInsets(top: 0, leading: -20, bottom: 0, trailing: -20))
                            .scrollContentBackground(.hidden)
                    }
                    //.navigationTitle("Команды")
                NavigationLink(destination: AddTeamView()) {
                    Image(systemName: "plus")
                        .font(.title.weight(.semibold))
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                        .shadow(radius: 4, x: 0, y: 4)
                        
                }
                .position(x: Constants.DisplaySize.screenWidth * 0.5, y: Constants.DisplaySize.screenHeight * 0.83  )
                }
            }
        }
    }
struct TeamSelectorView_Previews: PreviewProvider {
    
    static var previews: some View {
        @EnvironmentObject var items: AddNewTeam
        TeamSelectorView(items: items )
    }
}
