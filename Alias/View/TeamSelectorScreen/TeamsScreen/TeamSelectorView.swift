//
//  TeamSelectorView.swift
//  Alias
//
//  Created by Roman on 10/09/2023.
//

import SwiftUI

struct TeamSelectorView: View {
    
    @State var items: [PlayersModel]
    
    var body: some View {
        
       ZStack {
           Color("BGColor").ignoresSafeArea()
                List(items.indices) { itemIndex in
                    CardListRow(item: self.$items[itemIndex])
                        .listRowBackground(Color("BGColor"))
                        
        
                }
                .padding(EdgeInsets(top: 0, leading: -20, bottom: 0, trailing: -20))
                .scrollContentBackground(.hidden)
                
        }
    }
}

struct TeamSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        TeamSelectorView(items: PlayersModel.testData)
    }
}
