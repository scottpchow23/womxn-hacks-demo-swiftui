//
//  TshirtView.swift
//  womxn-hacks-demo-swiftui
//
//  Created by Scott P. Chow on 1/8/20.
//  Copyright © 2020 scottpchow. All rights reserved.
//

import SwiftUI

struct TshirtView: View {
    // This is a state variable that causes the view to update when it changes/mutates.
    @Binding var totalClicks: Int

    // This is a computed value, which means it runs the code in the following block to decide what value to return. Hence, it is "computed."
    var tshirtNoun: String {
        if (totalClicks == 1) {
            return "t-shirt"
        } else {
            return "t-shirts"
        }
    }


    // The "body" variable is a special variable in that it's value directly affects what visual elements appear on screen.
    var body: some View {
        VStack {
            Text("\(totalClicks) \(tshirtNoun)").font(.title)
                .padding()
            Button(action: {
                self.totalClicks += 1
            }) {
                Text("tap me")
            }.padding()
        }
    }
}

struct TshirtView_Previews: PreviewProvider {
    @State static var testValue = 0
    static var previews: some View {
        TshirtView(totalClicks: $testValue)
    }
}
