//
//  BindingExample.swift
//  Hello SwiftUI
//
//  Created by Ameya on 06/09/25.
//

import SwiftUI
import Observation

@Observable
class AppState {
    var isOn: Bool = false
}

struct BindingExample: View {
    @Environment(AppState.self) private var appState: AppState
    
    var body: some View {
        BindingMidChildView()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(appState.isOn ? .yellow : .black)
    }
}

struct BindingMidChildView: View {
    var body: some View {
        BindingChildView()
    }
}

struct BindingChildView: View {
    @Environment(AppState.self) private var appState: AppState
    
    var body: some View {
        @Bindable var appState = appState
        
        VStack {
            Image(systemName: appState.isOn ? "lightbulb.fill": "lightbulb")
                .font(.largeTitle)
                .foregroundStyle(appState.isOn ? .black : .white)
            Toggle(isOn: $appState.isOn) {
                Text("Toggle")
            }
//            Button("Toggle") {
//                appState.isOn.toggle()
//            }
        }
    }
}

#Preview {
    BindingExample()
        .environment(AppState())
}
