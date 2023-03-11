//
//  ContentView.swift
//  ShimmerEffect
//
//  Created by Abdullah Karaboğa on 11.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 1) {
                ForEach(0..<15) { i in
                    ContentLoader()
                    Divider()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
