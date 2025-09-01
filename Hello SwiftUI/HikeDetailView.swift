//
//  HikeDetailView.swift
//  Hello SwiftUI
//
//  Created by Ameya on 01/09/25.
//

import SwiftUI
import AppModels

struct HikeDetailView: View {
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: hike.photoURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: zoomed ? .fill: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding()
            } placeholder: {
                Text("Image is Loading...")
            }
            .onTapGesture {
                withAnimation {
                    zoomed.toggle()
                }
            }
            Text(hike.name)
                .font(.headline)
            Spacer()
        }
        .navigationTitle(hike.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        HikeDetailView(
            hike: Hike(
                name: "Tom, Dick and Harry mountain",
                photoURL: "https://plus.unsplash.com/premium_photo-1682390303440-3972e3193494?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                miles: 10.0
            )
        )
    }
}
