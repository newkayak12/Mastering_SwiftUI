import SwiftUI

struct MultiSelection: View {
    var items = AppleProduct.sampleList
    @State private var selected: Set<AppleProduct> = []
    
    var body: some View {
        VStack {
            Text("\(selected.count) item(s) selected")
                .font(.title)
            
            List(items, id: \.self, selection: $selected) { item in
                
                Button {
                    if selected.contains(item) {
                        selected.remove(item)
                    } else {
                        selected.insert(item)
                    }
                } label : {
                    if selected.contains(item) {
                        Label(item.name, systemImage: "checkmark")
                    } else {
                        Text(item.name)
                    }
                }
                
                
//                Text(item.name)
            }
            
        }
        .toolbar {
            #if os(iOS)
            EditButton()
            #endif
        }
    }
}

struct MultiSelection_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MultiSelection()
        }
    }
}
