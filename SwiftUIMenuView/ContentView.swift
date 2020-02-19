//
//  ContentView.swift
//  SwiftUIMenuView
//
//  Created by Jakub Slawecki on 19/02/2020.
//  Copyright © 2020 Jakub Slawecki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Text("Title")
                .font(.system(size: 28, weight: .bold))
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



