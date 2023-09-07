import SwiftUI

struct FontSizesAndWeights: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("50pt Font").font(.system(size: 50))
            
            
            Text("Black").font(.system(size: 50, weight: .black))
            
            
            Text("Heavy").font(.system(size: 50, weight: .heavy))
            
            
            Text("Bold").font(.system(size: 50, weight: .bold))
            
            
            Text("Semibold").font(.system(size: 50, weight: .semibold))
            
            
            Text("Medium").font(.system(size: 50, weight: .medium))
            
            
            Text("Regular").font(.system(size: 50, weight: .regular))
            
            
            Text("Light").font(.system(size: 50, weight: .light))
            
            
            Text("Thin").font(.system(size: 50, weight: .thin))
            
            Group {
                Text("Ultra Light").font(.system(size: 50, weight: .ultraLight))
                Text("Ultra Light").font(.system(size: 50)).fontWeight(.ultraLight)
            }
            
        }
    }
}

struct FontSizesAndWeights_Previews: PreviewProvider {
    static var previews: some View {
        FontSizesAndWeights()
    }
}
