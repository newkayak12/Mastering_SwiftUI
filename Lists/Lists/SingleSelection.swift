import SwiftUI

struct SingleSelection: View {
    var items = AppleProduct.sampleList
    @State var selected: AppleProduct? = nil
        
    var body: some View {
        VStack {
            Text("Selected : \(selected?.name ?? " - ")")
                .font(.largeTitle)
            
            
            List(items, id: \.self, selection: $selected) { appleProduct in
//                Button {
////                    selected = appleProduct
//                    //일반 모드에서는 selection 필요 없고 그냥 버튼으로 하면 된다고 한다. 이친구는 편집모드에서
//                } label: {
//                    Text(appleProduct.name)
//                }
                
                Text(appleProduct.name)

            }
        }
        .toolbar {
#if os(iOS)
            EditButton()
#endif

        }
    }
}

struct ManagingSelection_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SingleSelection()
        }
    }
}
