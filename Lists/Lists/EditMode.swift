import SwiftUI

struct EditMode: View {
    @State  private var items = AppleProduct.sampleList
    
    var body: some View {
        VStack {
            List {
                ForEach (items) { item in
                    Text(item.name)
                }
                .onDelete { row in
                    items.remove(atOffsets: row)
                }
                .onMove (perform: move(from:to:))
            }
        }
        .toolbar {
#if os(iOS)
            EditButton()
#endif
        }
    }
    
    func move( from: IndexSet, to: Int ) {
        items.move(fromOffsets: from, toOffset: to)
    }
}

struct EditMode_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            EditMode()
        }
    }
}
