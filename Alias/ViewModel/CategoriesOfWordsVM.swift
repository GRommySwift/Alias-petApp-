//
//  CategoriesOfWordsVM.swift
//  Alias
//
//  Created by Roman on 30/09/2023.
//

import Foundation

class CategoriesOfWordsVM: ObservableObject {
    
    @Published  var randomElementOfArray = 0
    @Published var elements: [GameModel] = [
        GameModel(nameOfCategory: "Element One", isAdded: false, arrayOfWords: arrayOne),
        GameModel(nameOfCategory: "Element Two", isAdded: false, arrayOfWords: arrayTwo),
        GameModel(nameOfCategory: "Element Three", isAdded: false, arrayOfWords: arrayThree)]
    
    @Published var arrayOfWords = [String]()
    
    @Published var gameResult = [GameResultsModel]()
    
    func addWordsToArray() {
        for array in elements {
            if array.isAdded == true {
                for i in array.arrayOfWords {
                    arrayOfWords.append(i)
                }
            }
        }
    }
 
    
}




