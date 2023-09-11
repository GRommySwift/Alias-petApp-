//
//  TeamView.swift
//  Alias
//
//  Created by Roman on 11/09/2023.
//

import SwiftUI

struct TeamView: View {
    var body: some View {
        NavigationLink(destination: AddTeamView(palyerModel: PlayersModel)) {
              HStack {
                  Text(PlayersModel.)
                  .font(.headline)
                  .lineLimit(1)
                Spacer()
              }
              .padding(.vertical, 8)
            }
          }
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView()
    }
}
