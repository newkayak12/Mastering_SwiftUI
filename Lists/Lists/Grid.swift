import SwiftUI

struct Grid: View {
   var items = AppleProduct.sampleList
   
   var body: some View {
      VStack {
          ForEach(0 ..< 3) { row in
              HStack {
                  ForEach(0 ..< 2) { column in
                      ProductGridItem(product: items[row * 3 + column])
                  }
              }
          }
      }
      .padding()
   }
}

struct Grid_Previews: PreviewProvider {
   static var previews: some View {
      Grid()
   }
}
