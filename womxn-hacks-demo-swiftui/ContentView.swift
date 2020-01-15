//
//  ContentView.swift
//  womxn-hacks-demo-swiftui
//
//  Created by Scott P. Chow on 1/8/20.
//  Copyright © 2020 scottpchow. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var view = false
    @State var count = 0
    @State var color = Color.white
    var body: some View {
        VStack {
            if view {
                DiscoView(backgroundColor: $color)
            } else {
                TshirtView(totalClicks: $count)
            }
            Button(action: {
                self.view = !self.view
            }) {
                Text("change view")
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
