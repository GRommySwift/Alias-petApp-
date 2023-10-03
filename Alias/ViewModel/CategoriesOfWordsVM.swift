//
//  CategoriesOfWordsVM.swift
//  Alias
//
//  Created by Roman on 30/09/2023.
//

import Foundation

class CategoriesOfWordsVM: ObservableObject {
    
   
    @Published var elements: [GameModel] = [
        GameModel(nameOfCategory: "Element One", isAdded: false, arrayOfWords: arrayOne),
        GameModel(nameOfCategory: "Element Two", isAdded: false, arrayOfWords: arrayTwo),
        GameModel(nameOfCategory: "Element Three", isAdded: false, arrayOfWords: arrayThree)]
    
    @Published var arrayOfWords = "Harry potter and orden of fenix"
    
//    func addWordsToArray() {
//        for array in elements {
//            for i in array.arrayOfWords {
//                arrayOfWords.append(i)
//            }
//            
//        }
//    }
}




