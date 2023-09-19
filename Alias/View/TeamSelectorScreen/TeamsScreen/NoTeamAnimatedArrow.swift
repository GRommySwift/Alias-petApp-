//
//  NoTeamAnimatedArrow.swift
//  Alias
//
//  Created by Roman on 19/09/2023.
//

import SwiftUI

struct NoTeamAnimatedArrow: View {
    @State private var scale = 0.1
    var body: some View {
        HStack {
            Image(systemName: "arrow.down")
                .resizable()
                .scaleEffect(scale)
                .onAppear {
                    let baseAnimation = Animation.easeInOut(duration: 1)
                    let repeated = baseAnimation.repeatForever(autoreverses: true)
                    withAnimation(repeated) {
                        scale = 0.04
                    }
                }
        }
    }
}

struct NoTeamAnimatedArrow_Previews: PreviewProvider {
    static var previews: some View {
        NoTeamAnimatedArrow()
    }
}
