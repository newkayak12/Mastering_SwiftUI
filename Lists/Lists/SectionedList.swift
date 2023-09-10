import SwiftUI

struct SectionedList: View {
    var items = CategorizedProduct.sampleList
    
    var body: some View {
        VStack {
//            List {
//
//                Section {
//                    Text("1")
//                    Text("2")
//                } header: {
//                    Text("HEADER")
//                } footer: {
//                    Text("FOOTER")
//                }
//
//
//                Text("3")
//                Text("4")
//                Text("5")
//            }
            
            
            List {
                ForEach(items) { category in
                    Section {
                        ForEach(category.list) { item in
                            Text(item.name )
                        }
                    } header: {
                        Text(category.header)
                    } footer: {
                        Text(category.footer ?? "")
                    }

                }
            }
        }
    }
}

struct SectionedList_Previews: PreviewProvider {
    static var previews: some View {
        SectionedList()
    }
}
