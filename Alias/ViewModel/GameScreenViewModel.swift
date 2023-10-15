//
//  CategoriesOfWordsVM.swift
//  Alias
//
//  Created by Roman on 30/09/2023.
//

import Foundation

class GameScreenViewModel: ObservableObject {
    @Published var randomElementOfArray = 0
    @Published var elements: [GameModel] = [
        GameModel(nameOfCategory: "Element One", isAdded: false, arrayOfWords: ArrayOfWords().arrayOne),
        GameModel(nameOfCategory: "Element Two", isAdded: false, arrayOfWords: ArrayOfWords().arrayTwo),
        GameModel(nameOfCategory: "Element Three", isAdded: false, arrayOfWords: ArrayOfWords().arrayThree)]
    
    @Published var arrayOfWords = [String]()
    
    @Published var gameResult : [GameResultsModel] = []
    
    @Published var testArray = ["котомарм собако конь", "дом", "море", "солнце", "книга", "яблоко", "школа", "музыка", "компьютер", "футбол", "путешествие", "часы", "красный", "цветок", "дружба", "звезда", "счастье", "океан", "город", "карта"]
    
    func addWordsToArray() {
        for array in elements {
            if array.isAdded == true {
                for i in array.arrayOfWords {
                    arrayOfWords.append(i)
                }
            }
        }
    }
    
    func addResultsOfGametoArray(selectedWord: String, isGuessedRight: Bool) {
        let newItem = GameResultsModel(selectedWord: selectedWord, isGuessedRight: isGuessedRight)
        gameResult.append(newItem)
    }
 
    func randomNumberForArrayOfWords() -> Int {
        let arrayCount = testArray.count - 1
        randomElementOfArray = Int.random(in: 0...arrayCount)
        return randomElementOfArray
    }
    
}




