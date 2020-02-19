//
//  MenuView.swift
//  SwiftUIMenuView
//
//  Created by Jakub Slawecki on 19/02/2020.
//  Copyright © 2020 Jakub Slawecki. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    @State var showExample = false
    
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 16) {
                Text("Jake")
                    .font(.caption)
                
                MenuRow(showExample: $showExample, title: "Settings", icon: "bell")
                MenuRow(showExample: $showExample, title: "Account", icon: "gear")
                MenuRow(showExample: $showExample, title: "Billing", icon: "creditcard")
                MenuRow(showExample: $showExample, title: "Sign out", icon: "person.crop.circle")
                
                .sheet(isPresented: $showExample) {
                    SettingExampleView()
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), Color(#colorLiteral(red: 0.8705882353, green: 0.8941176471, blue: 0.9450980392, alpha: 1))]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
            .padding(.horizontal, 35)
            .overlay(
            Image("Avatar")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .offset(y: -155)
            )
        }
        .padding(.bottom, 30)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

struct MenuRow: View {
    @Binding var showExample: Bool
    
    var title: String
    var icon: String
    
    var body: some View {
        HStack(spacing: 16) {
            Button(action: { self.showExample.toggle() }) {
                HStack(spacing: 16) {
                    Image(systemName: icon)
                        .renderingMode(.original)
                        .font(.system(size: 16, weight: .medium))
                        .frame(width: 32, height: 32)
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                    Text(title)
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .frame(width: 120, alignment: .leading)
                }
            }
        }
    }
}
