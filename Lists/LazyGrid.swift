import SwiftUI

struct LazyGrid: View {
    var items = AppleProduct.sampleList
    private let colums = [
//        GridItem(alignment: .top),
//        GridItem(alignment: .top),
//        GridItem(alignment: .top)
        
        GridItem(.adaptive(minimum: 200, maximum: .infinity), spacing: nil, alignment: .top)
    ]
    
    private let rows = [
        GridItem(.adaptive(minimum: 300, maximum: .infinity), spacing: 10, alignment: .leading)
    ]
    
    var body: some View {
       
        ScrollView(.horizontal) {
            LazyHGrid(/*columns: colums,*/ rows: rows, spacing: 30) {
                ForEach(items) { item in
                    ProductGridItem(product: item)
                }
            }
            .padding()
        }
        
    }
}

struct LazyGrid_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LazyGrid()
            LazyGrid()
.previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
