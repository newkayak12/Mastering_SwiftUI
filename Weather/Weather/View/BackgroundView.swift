//
//  BackgroundView.swift
//  Weather
//
//  Created by Sang Hyeon kim on 2023/09/18.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        GeometryReader { reader in
            Image("bkg")
                .resizable()
                .scaledToFill()
                .frame(width: reader.size.width)
                .ignoresSafeArea()
                .overlay{
                    Color.black.opacity(0.5).ignoresSafeArea()
                }
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
