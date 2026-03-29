//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Ajeet Sharma on 29/03/26.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30.0)
            .background(                
                // Conditional statement with nil Coalescing
                // Condition ? A : B
                configuration.isPressed ?
                // A: When user pressed the button
                LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom) :
                    // B: When the button is not pressed
                LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(40.0)
    }
    
}
