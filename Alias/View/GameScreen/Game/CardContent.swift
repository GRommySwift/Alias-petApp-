//
//  CardContent.swift
//  Alias
//
//  Created by Roman on 02/10/2023.
//

import SwiftUI

struct CardContent: View {
    @State var item: String
    var body: some View {
        HStack {
            Text("\(item)")
                .padding()
        }
    }
}
