import SwiftUI

struct ColorPicker_Tutorials: View {
    @State private var backgroundColor = Color(.sRGB, red: 1, green: 1, blue: 1)
        
    var body: some View {
        VStack {
            ColorPicker("색상 선택", selection: $backgroundColor, supportsOpacity: true)
                .padding()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundColor)
    }
}

struct ColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        ColorPicker_Tutorials()
    }
}
