//
//  ContentView.swift
//  Alias
//
//  Created by Roman on 10/09/2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        StartGame()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ContentView()
        }
        .environmentObject(AddNewTeam())
        .environmentObject(GameScreenViewModel())
    }
}
