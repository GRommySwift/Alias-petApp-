//
//  AliasApp.swift
//  Alias
//
//  Created by Roman on 10/09/2023.
//

import SwiftUI

@main
struct AliasApp: App {
    
//
//    init() {
//        printFonts()
//    }
//
//    func printFonts() {
//        let fonts = UIFont.familyNames
//
//        for familyName in fonts {
//            print("-------")
//            print("Font name -> [\(familyName)]")
//            let names = UIFont.fontNames(forFamilyName: familyName)
//            print("FONTS NAMES --->>> [\(names)]")
//        }
//    }
//
    @StateObject var addNewTeam: AddNewTeam = AddNewTeam()
    @StateObject var gameModel: GameScreenViewModel = GameScreenViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
            }
            .environmentObject(addNewTeam)
            .environmentObject(gameModel)
        }
    }
}
