//
//  TeamView.swift
//  Alias
//
//  Created by Roman on 11/09/2023.
//

import SwiftUI

struct TeamContentView: View {
    
    @State var item: PlayersModel
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 8) {
                Text(item.teamName)
                    .font(.custom(.buttonFont, size: 30))
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundColor(Constants.Colors.greenColor)
                    
                HStack {
                    VStack(alignment: .center, spacing: 5) {
                        Text("Player1 - \(item.players[0])")
                            .font(.custom(.subTitleFont, size: 16))
                            .foregroundColor(Constants.Colors.greenColor)
                        Text("Player1 - \(item.players[1])")
                            .font(.custom(.subTitleFont, size: 16))
                            .foregroundColor(Constants.Colors.greenColor)
                        Text(item.teamSummary)
                            .font(.custom(.subTitleFont, size: 14))
                            .foregroundColor(Constants.Colors.greenColor)
                    }
                    Image(item.teamImage)
                        .resizable()
                        .frame(width: 100, height: 100)
            }
        }
        .frame(alignment: .center)
        .padding()
    }
}

