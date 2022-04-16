//
//  ContentView.swift
//  PreviewTestsMobile
//
//  Created by Michał Śmiałko on 03/03/2022.
//

import SwiftUI
import Components

struct ContentView: View {
    var body: some View {
        Text("I'm iOS!")
            .padding(50)
            .background(Color.blue.opacity(0.2))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
