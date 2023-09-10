import SwiftUI

struct Color_Tutorials: View {
    var body: some View {
        VStack {
            Text("Color").font(.largeTitle).foregroundColor(.red)
            
            Color.blue
            Color.yellow
            
            Color(.sRGB, red: 70.0 / 255.0, green: 53.0 / 255.0, blue: 99.0 / 255.0, opacity: 1.0) //이러면 light, dark 최적화 X >>> COLOR ASSETS로
            
            Color("CustomColor")
           
        }
        .background(Color(.systemBackground))
    }
}

struct Color_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Color_Tutorials()
            Color_Tutorials()
                .preferredColorScheme(.dark)
        }
    }
}
