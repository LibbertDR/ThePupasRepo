//
//  SplitCameraView.swift
//  Unori
//
//  Created by Fabio Barbato on 06/03/23.
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

struct TutorialView: View {
    var body: some View {
        GeometryReader { reader in
            Text("Tutorial here")
                .position(x: reader.size.width/2, y:reader.size.height/2)
                .overlay(
                    Rectangle()
                        .stroke(.black, lineWidth: 8))
        }
    }
}

struct SplitCameraView: View {
    var body: some View {
        GeometryReader { reader in
            HStack{
                TutorialView()
                CameraView()
            }.frame(width: reader.size.width, height: reader.size.height)
        }
    }
}

struct SplitCameraView_Previews: PreviewProvider {
    static var previews: some View {
        SplitCameraView()
    }
}
