import SwiftUI

struct DynamicList: View {
    
    var items = Product.sampleList
    
    var body: some View {
            List(items, id: \.name) { item in
                Text(item.name)
            }
    }
}

struct DynamicList_Previews: PreviewProvider {
    static var previews: some View {
        DynamicList()
    }
}
