//
//  CameraView.swift
//  Unori
//
//  Created by Fabio Barbato on 07/03/23.
//

import SwiftUI

struct CameraView: View {
    var body: some View {
        GeometryReader{ reader in
            ContentView()
                .position(x: reader.size.width/2, y:reader.size.height/2)
                .overlay(
                    Rectangle()
                        .stroke(.black, lineWidth: 8))
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
