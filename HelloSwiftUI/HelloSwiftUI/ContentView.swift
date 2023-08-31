//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Sang Hyeon kim on 2023/08/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
//            cmd + shift + a : contextMenu
            Text("Hello, SwfitUI!")
                .font(.largeTitle)
                .padding(.horizontal, 10)
            Text("Have a nice day :)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
