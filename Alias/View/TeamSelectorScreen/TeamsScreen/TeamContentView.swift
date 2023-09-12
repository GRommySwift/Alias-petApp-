//
//  TeamView.swift
//  Alias
//
//  Created by Roman on 11/09/2023.
//

import SwiftUI

struct TeamContentView: View {
    
    var item: PlayersModel
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 8) {
                Text(item.teamName)
                    .font(.custom(.buttonFont, size: 30))
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundColor(Constants.Colors.greenColor)
                HStack {
                    Text(item.teamSummary)
                        .font(.custom(.subTitleFont, size: 14))
                        .foregroundColor(Constants.Colors.greenColor)
                    Image(item.teamImage)
                        .resizable()
                        .frame(width: 100, height: 100)
            }
        }
        .padding()
    }
}

