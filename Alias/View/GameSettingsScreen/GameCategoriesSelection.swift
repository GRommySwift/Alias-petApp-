//
//  GameCategoriesSelection.swift
//  Alias
//
//  Created by Roman on 30/09/2023.
//

import SwiftUI

struct GameCategoriesSelection: View {
    @EnvironmentObject var gameModel: CategoriesOfWordsVM
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BGColor").ignoresSafeArea(.all)
                VStack {
                    List {
                        ForEach($gameModel.elements) { $element in
                            CardOfWords(items: $element)
                        }
                    }
                    .scrollContentBackground(.hidden)
                }
                
                StartGameButton()
                    .position(x: Constants.DisplaySize.screenWidth * 0.5, y: Constants.DisplaySize.screenHeight * 0.83  )
            }
            .navigationBarBackButtonHidden(true)
            .toolbarBackground(.hidden, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(.purple)
                    })
                }
            }
        }
    }
}

struct GameCategoriesSelection_Previews: PreviewProvider {
        static var previews: some View {
            NavigationStack {
                GameCategoriesSelection()
            }
            .environmentObject(CategoriesOfWordsVM())
            .environmentObject(AddNewTeam())
        }
    }
