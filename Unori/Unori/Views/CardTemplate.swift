//
//  CardTemplate.swift
//  Unori
//
//  Created by Gabriella Annunziata on 06/03/23.
//

import SwiftUI

struct CardTemplate: View {
    
    var minWidth: CGFloat = 158
    var maxWidth: CGFloat = 199
    var word: ListItem = ListItem(name: "Placeholder",
                                  icon: "farfalla")
    
    var body: some View {
        
        
        
        ZStack{
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(40)
                .shadow(radius: 20)
            
            VStack{

                Image(word.icon)
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 88,
                           maxWidth: 111,
                           minHeight: 88,
                           maxHeight: 111,
                           alignment: .center)
                    
                
                Text(word.name)
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.medium)
                    .padding(.bottom, 5)
            }
            
            
//            Image(systemName:
//                    "heart")
//            .foregroundColor(Color("AccentColor"))
//            .frame(maxWidth: .infinity, alignment: .trailing)
//            .padding(.bottom, 110)
//            .padding(.trailing, 18)
            
        }
        .aspectRatio(1, contentMode: .fill)
        .frame(minWidth: minWidth, maxWidth: maxWidth, minHeight: minWidth, maxHeight: maxWidth)
    }
    
}


struct CardTemplate_Previews: PreviewProvider {
    static var previews: some View {
        CardTemplate()
    }
}
