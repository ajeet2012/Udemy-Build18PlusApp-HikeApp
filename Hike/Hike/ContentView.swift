//
//  ContentView.swift
//  Hike
//
//  Created by Ajeet Sharma on 29/03/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("image-1")
                .resizable()
                .scaledToFit()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
