//
//  NoTeamAnimatedArrow.swift
//  Alias
//
//  Created by Roman on 19/09/2023.
//

import SwiftUI

struct NoTeamAnimatedArrow: View {
    @State private var scale = 0.2
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "arrow.down")
            
                .resizable()
                .scaledToFit()
                .scaleEffect(scale)
                .onAppear {
                    
                    let baseAnimation = Animation.easeInOut(duration: 1)
                    let repeated = baseAnimation.repeatForever(autoreverses: true)
                    DispatchQueue.main.async {
                        withAnimation(repeated) {
                            scale = 0.1
                        }
                    }
                }
            Spacer()
        }
    }
}

struct NoTeamAnimatedArrow_Previews: PreviewProvider {
    static var previews: some View {
        NoTeamAnimatedArrow()
    }
}
