//
//  ContentView.swift
//  Moments
//
//  Created by Sajith on 2026-10-03.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false
    var body: some View {
        VStack {
            Button("Create a moment") {
                isPresented = true
            }
            .buttonStyle(.bordered)
            .sheet(isPresented: $isPresented) {
                MomentEntryView()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
