//
//  GameScreen.swift
//  Alias
//
//  Created by Roman on 01/10/2023.
//

import SwiftUI

struct GameScreen: View {
    @EnvironmentObject var gameModel: CategoriesOfWordsVM
    
    @State var timeRemaining: Int = 10
    
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BGColor").ignoresSafeArea(.all)
                VStack(spacing: -50) {
                    Text("Good answers : 6").font(.custom(.buttonFont, size: 20)).opacity(0.8).foregroundStyle(.white)
                    Text("\(timeRemaining)").font(.custom(.buttonFont, size: 250)).opacity(0.1).foregroundStyle(.white)
                        .padding()
//                    if gameModel.arrayOfWords.isEmpty {
                    
                        CardView(item: arrayOne[gameModel.randomElementOfArray])
                            .padding()
                            .font(.custom(.buttonFont, size: 30))
                            .frame(width: Constants.DisplaySize.screenWidth * 0.9, height: Constants.DisplaySize.screenHeight * 0.35)
                        Spacer()
//                    } else {
//                        CardView(item: gameModel.arrayOfWords[gameModel.randomElementOfArray])
//                               .padding()
//                               .font(.custom(.buttonFont, size: 30))
//                               .frame(width: Constants.DisplaySize.screenWidth * 0.9, height: Constants.DisplaySize.screenHeight * 0.35)
//                           Spacer()
//                    }
                HStack {
                    Spacer()
                    Button(action: skipBuuttonPressed, label: {
                        Text("Skip")
                            .font(.title.weight(.semibold))
                            .padding()
                            .background(Color.purple)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 50))
                            .shadow(radius: 4, x: 0, y: 4)
                            
                    })
                    Spacer()
                    Button(action: gameModel.nextButtonPressed, label: {
                        Text("Next")
                            .font(.title.weight(.semibold))
                            .padding()
                            .background(Color.purple)
                            .foregroundColor(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 50))
                            .shadow(radius: 4, x: 0, y: 4)
                    })
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
    
    func skipBuuttonPressed() {
        print(gameModel.randomElementOfArray)
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
