//
//  DiscoView.swift
//  womxn-hacks-demo-swiftui
//
//  Created by Scott P. Chow on 1/8/20.
//  Copyright © 2020 scottpchow. All rights reserved.
//

import SwiftUI

struct DiscoView: View {
    @State var backgroundColor = Color.white

    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            VStack {
                Button(action: {
                    self.backgroundColor = self.randomColor()
                }) {
                    Text("change the color")
                }
            }
        }
    }

    func randomColor() -> Color {
        return Color(red: Double.random(in: 0...255) / 255, green: Double.random(in: 0...255) / 255, blue: Double.random(in: 0...255) / 255)
    }
}

struct DiscoView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoView()
    }
}
