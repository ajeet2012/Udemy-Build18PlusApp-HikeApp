//
//  CustomCircleView.swift
//  Hike
//
//  Created by Ajeet Sharma on 30/03/26.
//

import SwiftUI

struct CustomCircleView: View {
    
    @State private var isGradientAnimated: Bool = false
    var body: some View {
        ZStack {
            
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .customIndigoMedium,
                            .customSalmonLight
                        ],
                        startPoint: isGradientAnimated ? .topLeading : .bottomLeading,
                        endPoint: isGradientAnimated ? .bottomTrailing : .topTrailing
                    )
                )
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isGradientAnimated.toggle()
                    }
                }
                .frame(
                    width: 256.0,
                    height: 256.0
                )
            
            MotionAnimationView()
        }// ZStack
    }
}

#Preview {
    CustomCircleView()
}
