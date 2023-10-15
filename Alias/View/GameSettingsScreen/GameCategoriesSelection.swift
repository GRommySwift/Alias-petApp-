//
//  GameCategoriesSelection.swift
//  Alias
//
//  Created by Roman on 30/09/2023.
//

import SwiftUI

struct GameCategoriesSelection: View {
    @EnvironmentObject var gameModel: GameScreenViewModel
    @Environment(\.dismiss) var dismiss
    @State var isPresenting = false
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
                
                Button {
                    isPresenting = true
                    gameModel.addWordsToArray()
                } label: {
                    Text("Start")
                        .font(.title.weight(.semibold))
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .shadow(radius: 4, x: 0, y: 4)
                }
                .position(x: Constants.DisplaySize.screenWidth * 0.5, y: Constants.DisplaySize.screenHeight * 0.83  )
                .navigationDestination(isPresented: $isPresenting) {
                    GameScreen()
                }
            }
            .navigationBarBackButtonHidden(true)
            .toolbarBackground(.hidden, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
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
            .environmentObject(GameScreenViewModel())
            .environmentObject(AddNewTeam())
        }
    }
