//
//  GameScreen.swift
//  Alias
//
//  Created by Roman on 01/10/2023.
//

import SwiftUI

struct GameScreen: View {
    @EnvironmentObject var gameModel: CategoriesOfWordsVM
    
    @State var timeRemaining: Int = 1
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    //  @State var offset: CGSize = .zero
    @State private var isShowingCard1 = true
    @State private var goodAnswers: Int = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BGColor").ignoresSafeArea(.all)
                VStack(spacing: -50) {
                    Text("Правильно : \(goodAnswers)").font(.custom(.buttonFont, size: 20)).opacity(0.8).foregroundStyle(.white)
                    
                        Text("\(timeRemaining)").font(.custom(.buttonFont, size: 250)).opacity(0.1).foregroundStyle(.white)
                            .padding()
                    if timeRemaining < 1 {
                        Text("Последнее слово").font(.custom(.buttonFont, size: 40)).opacity(0.5).foregroundStyle(.red)
                            Spacer()
                    }
                    if isShowingCard1 {
                        CardReady(item: ArrayOfWords().arrayOne[gameModel.randomElementOfArray])
                        Spacer()
                    } else {
                        CardReady(item: ArrayOfWords().arrayOne[gameModel.randomElementOfArray])
                        Spacer()
                    }
                    
                    HStack {
                        Spacer()
                       
                            CreatedButton(textLabel: "Пропустить") {
                                isShowingCard1.toggle()
                                skipBuuttonPressed()
                            }
                            
                            Spacer()
                            CreatedButton(textLabel: "Дальше") {
                                nextButtonPressed()
                                isShowingCard1.toggle()
                                goodAnswers += 1
                            }
                        
                        Spacer()
                    }
                    Spacer()
                    
                }
                .onReceive(timer, perform: { _ in
                    if timeRemaining > 0 {
                        timeRemaining -= 1
                    } else {
                        timeRemaining = 0
                    }
                    
                })
                
            }
            .navigationBarBackButtonHidden(true)
        }
    }
    
    func nextButtonPressed() {
        gameModel.randomElementOfArray = (gameModel.randomElementOfArray + 1)
        // print(gameModel.randomElementOfArray)
    }
    
    func skipBuuttonPressed() {
        gameModel.randomElementOfArray = (gameModel.randomElementOfArray + 1)
        // print(gameModel.randomElementOfArray)
    }
    
    
}


struct GameScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            GameScreen()
        }
        .environmentObject(CategoriesOfWordsVM())
    }
}
