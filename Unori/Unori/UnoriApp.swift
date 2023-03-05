//
//  UnoriApp.swift
//  Unori
//
//  Created by Gabriella Annunziata on 03/03/23.
//

import SwiftUI

@main
struct UnoriApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear{
                    // Disable the idle timer to prevent the screen from locking.
                    UIApplication.shared.isIdleTimerDisabled = true
                }
        }
    }
}
