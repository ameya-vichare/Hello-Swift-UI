//
//  State.swift
//  Hello SwiftUI
//
//  Created by Ameya on 06/09/25.
//

import SwiftUI

struct StateExampleView: View {
    @State private var searchText: String = ""
    @State private var friends: [String] = ["Milo", "Skippy", "Ameya", "Aanchal"]
    @State private var filteredFriends: [String] = []
    
    var body: some View {
        VStack {
            List(filteredFriends, id: \.self) { friend in
                Text(friend)
            }
            .onChange(of: searchText) {
                guard !searchText.isEmpty else {
                    filteredFriends = friends
                    return
                }
                filteredFriends = friends.filter { $0.contains(searchText) }
            }
            .listStyle(.automatic)
            .searchable(text: $searchText)
        }
        .onAppear {
            filteredFriends = friends
        }
        .navigationTitle("Friends")
    }
}

#Preview {
    NavigationStack {
        StateExampleView()
    }
}
