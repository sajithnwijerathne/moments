//
//  MomentsApp.swift
//  Moments
//
//  Created by Sajith on 2026-10-03.
//

import SwiftUI
import SwiftData

@main
struct MomentsApp: App {
    let dataContainer = DataContainer()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(dataContainer)
        }
        .modelContainer(dataContainer.modelContainer)
    }
}
