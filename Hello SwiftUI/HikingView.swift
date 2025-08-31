//
//  HikingView.swift
//  Hello SwiftUI
//
//  Created by Ameya on 31/08/25.
//

import SwiftUI
import AppModels

struct HikingView: View {
    let hikes = [
        Hike(name: "Salmonberry Trail", photoURL: "https://images.unsplash.com/photo-1619061277763-f81f1ece7f6e?q=80&w=2532&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", miles: 5.0),
        Hike(name: "Tom, Dick and Harry mountain", photoURL: "https://plus.unsplash.com/premium_photo-1682390303440-3972e3193494?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", miles: 10.0),
        Hike(name: "Tamanawas Fall", photoURL: "https://images.unsplash.com/photo-1686242560206-45af86165905?q=80&w=2531&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", miles: 3.0)
    ]
    
    var body: some View {
        List(hikes) { hike in
            HStack(alignment: .center) {
                AsyncImage(url: URL(string: hike.photoURL)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .frame(width: 120)
                } placeholder: {
                    Text("Image is loading...")
                }

                VStack(alignment: .leading, spacing: 2) {
                    Text(hike.name)
                        .font(.system(size: 18))
                        .fontWeight(.medium)
                    Text("\(hike.miles.formatted()) miles away")
                        .font(.system(size: 14))
                }
            }
            .padding([.top, .bottom], 4)
        }
    }
}

#Preview{
    HikingView()
}
