//
//  SettingsView.swift
//  Hike
//
//  Created by Ajeet Sharma on 30/03/26.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK: - Section HEADER
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGreenLight,
                            .customGreenMedium,
                            .customGreenDark
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .padding(.top, 8)
                VStack(spacing: 8) {
                    
                    Text("Where can you find \nperfect tracks?")
                        .fontWeight(.black)
                        
                    
                    Text("The hike which looks gorgeous in photos but is even better in real life is the one you're looking for.\nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk")
                        .fontWeight(.heavy)
                        .foregroundStyle(.colorGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                
            } //: HEADER
            .listRowSeparator(.hidden)
            
            // MARK: - Section ICON
            
            // MARK: - SECTION ABOUT
            
            
            
        } //: LIST
        
    }
}

#Preview {
    SettingsView()
}
