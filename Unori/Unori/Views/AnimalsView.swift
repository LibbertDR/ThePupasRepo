//
//  AnimalsView.swift
//  Unori
//
//  Created by Gabriella Annunziata on 07/03/23.
//

import SwiftUI

struct AnimalsView: View {
    
    let colums = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        
        LazyVGrid(columns: colums, spacing: 44) {
            
            ForEach( animalsItem, id: \.self){ item in
                CardTemplate2(word: item)                    
            }
        }
    }
}


struct AnimalsView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalsView()
    }
}
