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
    
}




