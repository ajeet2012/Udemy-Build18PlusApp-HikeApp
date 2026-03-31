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
            Section(header: Text("ABOUT THE APP"), footer: HStack {
                Spacer()
                Text("Copyright © All right reserved.")
                Spacer()
            }
                .padding(.vertical, 8)
            ) {
                // 1. Basic label content
                
                //  LabeledContent("Application", value: "Hike")
                
                // 2. Avanced label content
                CustomListRowView(rowlabel: "Application", rowIcon: "apps.iphone", rowConent: "Hike", rowTintColor: .blue)
                CustomListRowView(rowlabel: "Complatibility", rowIcon: "info.circle", rowConent: "iOS, iPadOS", rowTintColor: .red)
                CustomListRowView(rowlabel: "Technology", rowIcon: "swift", rowConent: "Swift", rowTintColor: .orange)
                CustomListRowView(rowlabel: "Version", rowIcon: "gear", rowConent: "1.0.0", rowTintColor: .purple)
                CustomListRowView(rowlabel: "Developer", rowIcon: "ellipsis.curlybraces", rowConent: "John Doe", rowTintColor: .mint)
                CustomListRowView(rowlabel: "Designer", rowIcon: "paintpalette", rowConent: "Ajeet Sharma", rowTintColor: .pink)
                
                CustomListRowView(rowlabel: "Website", rowIcon: "globe", rowTintColor: .indigo, rowLinkLabel: "Magic Software", rowLinkDestination: "https://magicsoftware.com")
                
            }//: SECTION
            
            
        } //: LIST
        
    }
}

#Preview {
    SettingsView()
}
