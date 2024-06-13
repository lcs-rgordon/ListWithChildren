//
//  DetailView.swift
//  ListWithChildren
//
//  Created by Russell Gordon on 2024-06-13.
//

import SwiftUI

struct DetailView: View {
    
    // MARK: Stored properties
    let name: String
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            Color.yellow            
        }
        .navigationTitle(name)
    }
}

#Preview {
    NavigationStack {
        DetailView(name: "Danika")
    }
}
