//
//  CardView.swift
//  Hike
//
//  Created by Ajeet Sharma on 29/03/26.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        // MARK: - CARD
        ZStack {
            CustomBackgroundView()
            VStack {
                
                // MARK: - HEADER
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52.0))
                            .foregroundStyle(
                                LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
                            )
                        Spacer()
                        Button {
                            
                            //ACTION: Show a sheet
                            
                            print("The Button was pressed.")
                            
                        } label: {
                            CustomButtonView()
                        }
                        //Spacer()
                    }
                    Text("Fun and enjoyable outdoor activities for friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                    
                } //:  HEADER
                .padding(.horizontal, 30)
                
                // MARK: - MAIN CONTENT
                
                
                
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(colors: [Color("ColorIndigoMedium"), Color("ColorSalmonLight")], startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .frame(width: 256.0, height: 256.0)
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                        .padding()
                }
                
                
                // MARK: - FOOTER
            }// : VSTACK
        }//: CARD
        .frame(width: 320.0, height: 570.0)
    }
}

#Preview {
    CardView()
}
