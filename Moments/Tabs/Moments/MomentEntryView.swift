//
//  MomentEntryView.swift
//  Moments
//
//  Created by Sajith on 2026-10-03.
//

import SwiftUI

struct MomentEntryView: View {
    @State private var title = ""
    @State private var note = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                contentStack
            }
            .scrollDismissesKeyboard(.interactively)
            .navigationTitle("Grateful for")
        }
    }
    
    var contentStack: some View {
        VStack(alignment: .leading) {
            TextField(text: $title) {
                Text("Text (Requied)")
            }
            .font(.title.bold())
            .padding(.top, 48)
            
            Divider()
            
            TextField("Log your small wins", text: $note, axis: .vertical)
                .multilineTextAlignment(.leading)
                .lineLimit(5...Int.max)
        }
        .padding()
    }
}

#Preview {
    MomentEntryView()
}
