//
//  ContentView.swift
//  Action Classifier SwiftUI
//
//  Created by Gianluca Orpello on 02/03/23.
//

import SwiftUI
import Vision

struct ContentView: View {
    
    @ObservedObject var predictionVM = PredictionViewModel()
    
//    var switchCamera: some View {
//        HStack {
//            Button {
//                predictionVM.videoCapture.toggleCameraSelection()
//            } label: {
//                Image(systemName: "arrow.triangle.2.circlepath.camera.fill")
//                    .imageScale(.large)
//                    .foregroundColor(.accentColor)
//            }
//            .padding(.leading)
//
//            Spacer()
//        }
//    }
    
    var predictionLabels: some View {
        VStack {
            //switchCamera
            //Spacer()
            Text("Prediction: \(predictionVM.predicted)")
                .foregroundColor(.white)
                .background(Rectangle().foregroundColor(.black))
            Text("Confidence: \(predictionVM.confidence)").foregroundColor(.white)
                .background(Rectangle().foregroundColor(.black))
        }
    }
    
    var body: some View {
        ZStack {
            GeometryReader{ reader in
                Image(uiImage: predictionVM.currentFrame ?? UIImage())
                    .resizable()
                    .scaledToFill()
                    .frame(width: reader.size.width,
                    height: reader.size.height)
                    .cornerRadius(40)
                    .clipped() //To clip the image content within its view's bounds
                predictionLabels
            }
        }
        .onAppear{
            predictionVM.updateUILabels(with: .startingPrediction)
        }
        // Detect if device change orientation
        .onReceive(
            NotificationCenter
                .default
                .publisher(for: UIDevice.orientationDidChangeNotification)) {
                    _ in
                    predictionVM.videoCapture.updateDeviceOrientation()
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
