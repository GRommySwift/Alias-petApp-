//
//  NoTeamView.swift
//  Alias
//
//  Created by Roman on 19/09/2023.
//

import SwiftUI

struct NoTeamView: View {
    var body: some View {
      //  ZStack {
            VStack {
                NoTeamTextAndImage()
            }
      //  }
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
    }
}

struct NoTeamView_Previews: PreviewProvider {
    static var previews: some View {
        NoTeamView()
    }
}
