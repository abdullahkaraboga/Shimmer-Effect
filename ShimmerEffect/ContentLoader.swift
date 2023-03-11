//
//  ContentLoader.swift
//  ShimmerEffect
//
//  Created by Abdullah Karaboğa on 11.03.2023.
//

import SwiftUI

struct ContentLoader: View {
    var body: some View {

        ZStack {
            Color.white
            VStack {
                HStack {
                    ProfilePictureShimmer()
                    TextsShimmer()
                }
                PostPictureShimmer()
            }.padding()
        }
    }
}

struct ProfilePictureShimmer: View {
    var body: some View {
        ShimmerContainer()
            .cornerRadius(30)
            .frame(width: 60, height: 60)
    }
}

struct PostPictureShimmer: View {
    var body: some View {
        ShimmerContainer()
            .frame(height: 200)
            .padding(.vertical, 12)
    }
}

struct TextsShimmer: View {
    var body: some View {
        VStack {
            ShimmerContainer()
                .frame(height: 25)
            ShimmerContainer()
                .frame(height: 25)
        }.padding()
    }
}
