//
//  ContentView.swift
//  Hello SwiftUI
//
//  Created by Ameya on 31/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            Image("berlin")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            AsyncImage(url: URL(string: "https://images.unsplash.com/photo-1691315034099-00bc7984d2ab?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            } placeholder: {
                Text("Image is Downloading... ")
            }

            HStack {
                Text("First line")
                    .foregroundStyle(.blue)
                VStack {
                    Text("Third line - left")
                        .font(.system(size: 28))
                        .fontWeight(.bold)
                        .padding([.bottom, .leading], 20)
                    Text("Third line - right")
                }
            }
        }.foregroundStyle(.gray)
            .padding()
    }
}

#Preview {
    ContentView()
}
