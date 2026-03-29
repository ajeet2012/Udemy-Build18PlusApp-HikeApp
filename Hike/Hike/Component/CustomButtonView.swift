//
//  CustomButtonView.swift
//  Hike
//
//  Created by Ajeet Sharma on 29/03/26.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(
                    colors: [.white, .customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom)
                )
                .stroke(
                    LinearGradient(
                        colors: [.customGrayLight, .customGrayMedium],
                        startPoint: .top, endPoint: .bottom
                    ),
                    lineWidth: 4.0
                )
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
                )
            
        }// ZStack:
        .frame(width: 58, height: 58)
    }
}

#Preview {
    CustomButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
