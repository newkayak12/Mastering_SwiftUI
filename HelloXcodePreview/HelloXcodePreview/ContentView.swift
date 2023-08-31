//
//  ContentView.swift
//  HelloXcodePreview
//
//  Created by Sang Hyeon kim on 2023/08/31.
//

import SwiftUI

struct ContentView: View {
    @State private var value: Double = 0
    
    
    var body: some View {
        VStack {
            Text("Hello,SwiftUI")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding()
            HStack {
                Text("test1").padding(.horizontal, 0).multilineTextAlignment(.trailing)
                Text("test2").padding(.horizontal, 0)
                Text("test3").padding(.horizontal, 0).multilineTextAlignment(.leading)
            }
            Text("\(value)")
            Slider(value: $value).padding(.horizontal)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
