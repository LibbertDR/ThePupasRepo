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
    var word: Word = Word(name: "Placeholder", image: "Home", isFavourite: false)
    
    var body: some View {
        
        GeometryReader { reader in
            ZStack{
                
                
                Rectangle()
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .shadow(radius: 20)
                
                VStack{
                    ZStack{
                        
                        Image(word.image)
                            .resizable()
                            .frame(width: reader.frame(in: .named("Rettangolo")).width * 1/9, height: reader.frame(in: .named("Rettangolo")).height * 1/8)
                        
                        
                        Image(systemName: word.isFavourite ? "heart.fill" : "heart")
                            .foregroundColor(Color("AccentColor"))
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .padding(.bottom, 110)
                            .padding(.trailing, 18)
                        
                    }
                    
                    Text(word.name)
                        .foregroundColor(Color("AccentColor"))
                        .fontWeight(.medium)
                        .padding(.bottom, 5)
                }
               
                    
                
                
            }.frame(minWidth: minWidth, maxWidth: maxWidth, minHeight: minWidth, maxHeight: maxWidth)
                .coordinateSpace(name: "Rettangolo")
        }
        
    }
}

struct CardTemplate_Previews: PreviewProvider {
    static var previews: some View {
        CardTemplate()
    }
}
