//
//  NoTeamTextAndImage.swift
//  Alias
//
//  Created by Roman on 19/09/2023.
//

import SwiftUI

struct NoTeamTextAndImage: View {

    
    var body: some View {
        HStack {
            VStack {
                Text("No team is here")
                    .font(.custom(.buttonFont, size: 40))
                    .padding()
                VStack {
                    NoTeamAnimatedArrow()
                }
                Spacer()
            }
        }
    }
}

struct NoTeamTextAndImage_Previews: PreviewProvider {
    static var previews: some View {
        NoTeamTextAndImage()
    }
}
