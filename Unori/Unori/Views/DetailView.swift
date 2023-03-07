//
//  AnimalsView.swift
//  Unori
//
//  Created by Gabriella Annunziata on 07/03/23.
//

import SwiftUI

struct DetailView: View {
    var cards: [ListItem]
    
    let colums = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: colums, spacing: 44) {
                
                ForEach( cards, id: \.self){ item in
                    NavigationLink(destination: CardView_SplitCameraView(chosenWord: item)){
                        CardTemplate(word: item)
                    }
                }
            }
        }
    }
}


//struct AnimalsView_Previews: PreviewProvider {
//    static var previews: some View {
//        AnimalsView()
//    }
//}
