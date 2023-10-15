//
//  GameScreen.swift
//  Alias
//
//  Created by Roman on 01/10/2023.
//

import SwiftUI

struct GameScreen: View {
    @EnvironmentObject var gameModel: GameScreenViewModel
    @State private var redirectToNextView = false
    @State var timeRemaining: Int = 5
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    //  @State var offset: CGSize = .zero
    @State private var isShowingCard1 = true
    @State private var goodAnswers: Int = 0
    @State private var lastWordLabel = "Последнее слово"
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BGColor").ignoresSafeArea(.all)
                VStack(spacing: -50) {
                    Text("Правильно : \(goodAnswers)").font(.custom(.buttonFont, size: 20)).opacity(0.8).foregroundStyle(.white)
                    
                    Text("\(timeRemaining)").font(.custom(.buttonFont, size: 250)).opacity(0.1).foregroundStyle(.white)
                        .padding()
                    Text(lastWordLabel).font(.custom(.buttonFont, size: 40)).opacity(timeRemaining < 1 ? 0.5 : 0)
                        .foregroundStyle(.red)
                    Spacer()
                    
                    if isShowingCard1 {
                        CardReady(item: gameModel.testArray[gameModel.randomElementOfArray])
                        Spacer()
                    } else {
                        CardReady(item: gameModel.testArray[gameModel.randomElementOfArray])
                        Spacer()
                    }
                    Spacer()
                    HStack {
                        Spacer()
                        if timeRemaining > 0 {
                        CreatedButton(textLabel: "Пропустить") {
                                isShowingCard1.toggle()
                                skipBuuttonPressed()
                        }
                        Spacer()
                            CreatedButton(textLabel: "Дальше") {
                                nextButtonPressed()
                                isShowingCard1.toggle()
                            }
                        } else {
                            GSNextScreenButton(labelText: "Пропустить")
                                .simultaneousGesture(TapGesture().onEnded({ _ in
                                    skipBuuttonPressed()
                                    print(goodAnswers)
                                }))
                            Spacer()
                            GSNextScreenButton(labelText: "Дальше")
                                .simultaneousGesture(TapGesture().onEnded({ _ in
                                    nextButtonPressed()
                                    print(goodAnswers)
                                }))
                           
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
        gameModel.addResultsOfGametoArray(selectedWord: gameModel.testArray[gameModel.randomElementOfArray], isGuessedRight: true)
        if gameModel.testArray.count > 1 {
            goodAnswers += 1
            removeAndRandomizeItem()
        }
        
    }
    
    func skipBuuttonPressed() {
        gameModel.addResultsOfGametoArray(selectedWord: gameModel.testArray[gameModel.randomElementOfArray], isGuessedRight: false)
        if gameModel.testArray.count > 1 {
            removeAndRandomizeItem()
        }
    }
    
    func removeAndRandomizeItem() {
        gameModel.testArray.remove(at: gameModel.randomElementOfArray)
        _ = gameModel.randomNumberForArrayOfWords()
    }
    
}


struct GameScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            GameScreen()
        }
        .environmentObject(GameScreenViewModel())
    }
}
