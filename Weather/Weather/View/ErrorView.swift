//
//  ErrorView.swift
//  Weather
//
//  Created by Sang Hyeon kim on 2023/09/19.
//

import SwiftUI

struct ErrorView: View {
    @EnvironmentObject var service: WeatherService
    var body: some View {
        VStack {
            Image(systemName: "exclamationmark.circle")
                .font(.largeTitle)
                .foregroundColor(.white)
            
            if let error = service.lastError {
                Text(error)
                    .foregroundColor(.white)
                    .padding()
            }
            
            Button {
                service.lastError = nil
                service.fetch()
            } label: {
                Text("다시 요청")
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView()
            .environmentObject(WeatherService.preview)
            .preferredColorScheme(.dark)
    }
}
