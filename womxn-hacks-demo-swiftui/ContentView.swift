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

    var body: some View {
        VStack {
            if view {
                DiscoView()
            } else {
                TshirtView()
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
