//
//  SplitCameraView.swift
//  Unori
//
//  Created by Fabio Barbato on 06/03/23.
//

import SwiftUI

struct SplitCameraView: View {
    var body: some View {
        GeometryReader { reader in
            
                HStack{
                    TutorialView_Bounds()
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
