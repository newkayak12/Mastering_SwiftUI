import SwiftUI

struct ButtonStyles: View {
    var body: some View {
        VStack {
            Button("Automatic", action: {})
                .padding()
                .buttonStyle(.automatic)
            
            Button("Plain", action: {})
                .padding()
                .buttonStyle(.plain)
            
            Button("Bordered", action: {})
                .padding()
                .buttonStyle(.bordered)
            
            Button("Bordered Prominent", action: {})
                .padding()
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
            
            Button("Bordered Prominent", action: {})
                .padding()
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle)
            
            Button("Bordered Prominent", action: {})
                .padding()
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 20))
            
            Button("Borderless", action: {})
                .padding()
                .buttonStyle(.borderless)
            
            #if os(macOS)
            Button("Link", action: {})
                .padding()
                .buttonStyle(.link)
            #endif
            
            #if os(tvOS)
            Button("Card", action: {})
                .padding()
                .buttonStyle(.card)
            #endif
        }
        .tint(.brown)
    }
}

struct ButtonStyles_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyles()
    }
}
