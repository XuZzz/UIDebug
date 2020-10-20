//
//  ContentView.swift
//  UIDebugging
//
//  Created by Xu on 2020/10/20.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = "hello"
    var body: some View {
        CustomView(text: self.$text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
