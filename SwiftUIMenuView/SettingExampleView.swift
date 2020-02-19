//
//  SettingExampleView.swift
//  SwiftUIMenuView
//
//  Created by Jakub Slawecki on 19/02/2020.
//  Copyright © 2020 Jakub Slawecki. All rights reserved.
//

import SwiftUI

struct SettingExampleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Example View")
                    .font(.system(size: 30, weight: .bold))
                
                Spacer()
            }
            .padding()
            
            Spacer()
        }
        .frame(width: screen.width * 0.8, height: screen.height * 0.5)
        .background(Color.red.opacity(0.8))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: .red, radius: 20, x: 0, y: 10)
    }
}

struct SettingExampleView_Previews: PreviewProvider {
    static var previews: some View {
        SettingExampleView()
    }
}
