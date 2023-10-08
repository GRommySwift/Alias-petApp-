//
//  GameModel.swift
//  Alias
//
//  Created by Roman on 10/09/2023.
//

import Foundation


struct GameModel: Identifiable {
    let id = UUID()
    let nameOfCategory: String
    var isAdded: Bool
    let arrayOfWords: Array<String>
}




