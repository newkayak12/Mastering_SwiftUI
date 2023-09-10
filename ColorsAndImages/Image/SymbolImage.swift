
import SwiftUI

struct SymbolImage: View {
    var body: some View {
        VStack {
//            HStack {
//                Image(systemName: "star")
//                    .font(.largeTitle)
//                    .imageScale(.large)
//                Text("Image").font(.largeTitle)
//            }
            
            
            Image(systemName: "star")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .foregroundColor(.yellow)
            
            
            Image(systemName: "cloud.sun.rain")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .symbolRenderingMode(.palette)
                .foregroundStyle(.gray, .yellow, .blue)
        }
    }
}

struct SymbolImage_Previews: PreviewProvider {
    static var previews: some View {
        SymbolImage()
    }
}
