//
//  TeamSelectorView.swift
//  Alias
//
//  Created by Roman on 10/09/2023.
//

import SwiftUI
import NavigationTransitions

struct TeamSelectorView: View {
    
    @State var items: [PlayersModel]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BGColor").ignoresSafeArea()
                    if items.count == 0 {
                        NoTeamTextAndImage()
                    } else {
                        List(items.indices, id: \.self) { itemIndex in
                            CardListRow(item: self.$items[itemIndex])
                                .listRowBackground(Color("BGColor"))
                        }.padding(EdgeInsets(top: 0, leading: -20, bottom: 0, trailing: -20))
                            .scrollContentBackground(.hidden)
                    }
                    //.navigationTitle("Команды")
                    
                   
//                    NavigationLink {
//                        AddTeamView().navigationBarBackButtonHidden(true)
//                    } label: {
//                        Image(systemName: "plus")
//                            .font(.title.weight(.semibold))
//                            .padding()
//                            .background(Color.purple)
//                            .foregroundColor(.white)
//                            .clipShape(Circle())
//
//                            .shadow(radius: 4, x: 0, y: 4)
//                            .position(x: Constants.DisplaySize.screenWidth * 0.48, y: Constants.DisplaySize.screenHeight * 0.83  )
//
//                    }
//                    .padding()
//                    .frame(width: 80, height: 80 , alignment: .bottom)
//                }
            }
        }
    }
struct TeamSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        TeamSelectorView(items: AddNewTeam.teams)
    }
}
