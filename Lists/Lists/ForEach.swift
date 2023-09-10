import SwiftUI

struct View_ForEach: View {
    var items = AppleProduct.sampleList
    
    var body: some View {
        VStack {
            ForEach(items) { item in
                Text(item.name)
            }
        }
    }
}

struct View_ForEach_Previews: PreviewProvider {
    static var previews: some View {
        View_ForEach()
    }
}
