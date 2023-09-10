import SwiftUI

struct DynamicIdentifiableList: View {
    var items = AppleProduct.sampleList
    
    var body: some View {
        List (items) { item in
            Text(item.name)
        }
    }
}

struct DynamicIdentifiableList_Previews: PreviewProvider {
    static var previews: some View {
        DynamicIdentifiableList()
    }
}
