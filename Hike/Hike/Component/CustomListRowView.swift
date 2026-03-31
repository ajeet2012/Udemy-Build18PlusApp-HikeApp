//
//  CustomListRowView.swift
//  Hike
//
//  Created by Ajeet Sharma on 31/03/26.
//

import SwiftUI

struct CustomListRowView: View {
    //MARK: - PROPERTIES
    
    @State var rowlabel: String
    @State var rowIcon: String
    @State var rowConent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    var body: some View {
        
        LabeledContent {
            if rowConent != nil {
                Text(rowConent!)
                    .foregroundStyle(.primary)
                    .fontWeight(.heavy)
            }
            else if (rowLinkLabel != nil && rowLinkDestination != nil) {
                
                Link(rowLinkLabel!, destination: URL(string: rowLinkDestination!)!)
                    .foregroundStyle(.pink)
                    .fontWeight(.heavy)
                
            }
            else {
                EmptyView()
            }
            
        } label: {
            // Label
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }
                
                Text(rowlabel)
                
            }
        }
    }
}

#Preview {
    List {
        CustomListRowView(
            rowlabel: "Website",
            rowIcon: "globe",
            rowConent: nil,
            rowTintColor: .pink,
        rowLinkLabel: "Magic Software",
        rowLinkDestination: "https://magicsoftware.com")
    }
}
