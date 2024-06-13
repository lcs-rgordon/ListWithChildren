//
//  ExpandableListView.swift
//  ListWithChildren
//
//  Created by Russell Gordon on 2024-06-13.
//

import SwiftUI

// MODEL
// Need to conform to Identifiable
struct Parent: Identifiable {
    var id = UUID()
    var name = ""
    var children: [Parent]? // Had to make this optional
}

let parents = [Parent(name: "Mark",
                      children: [Parent(name: "Paola")]),
               Parent(name: "Rodrigo",
                      children: [Parent(name: "Kai"), Parent(name: "Brennan"),
                                 Parent(name: "Easton")]),
               Parent(name: "Marcella",
                      children: [Parent(name: "Sam"), Parent(name: "Melissa"),
                                 Parent(name: "Melanie")])]


// VIEW
struct ExpandableListView: View {
    
    // MARK: Stored properties
    
    // MARK: Computed properties
    var body: some View {
        NavigationStack {
            VStack {
                List(parents, children: \.children) { parent in
                    NavigationLink {
                        DetailView(name: parent.name)
                    } label: {
                        Text("\(parent.name)")
                    }
                }
            }
            .navigationTitle("Expanding Lists")
        }
    }
}

#Preview {
    ExpandableListView()
}
