//
//  ShimmerContainer.swift
//  ShimmerEffect
//
//  Created by Abdullah Karaboğa on 11.03.2023.
//

import SwiftUI

struct ShimmerContainer: View {

    private var gradientColors = [
        Color(uiColor: UIColor.systemGray4),
        Color(uiColor: UIColor.systemGray6),
        Color(uiColor: UIColor.systemGray4),
    ]

    @State var isAnimate: Bool = false
    @State var startPoint: UnitPoint = .init(x: -1.8, y: -1.2)
    @State var endPoint: UnitPoint = .init(x: 0, y: 0.2)


    var body: some View {
        LinearGradient(colors: gradientColors, startPoint: startPoint, endPoint: endPoint)
            .onAppear {
            withAnimation(.easeInOut(duration: 1).repeatForever(autoreverses: false)) {
                startPoint = .init(x: 1, y: 1)
                endPoint = .init(x: 2.2, y: 2.2)
            }
        }
    }
}

struct ShimmerContainer_Previews: PreviewProvider {
    static var previews: some View {
        ShimmerContainer()
    }
}
