import SwiftUI

struct CustomizingList: View {
    var body: some View {
        VStack {            
            List {
                Section() {
                    Text("Hello, List!")
                    Text("List Row Insets")
                        .listRowInsets(EdgeInsets(top: 0, leading:60, bottom: 0, trailing: 0))
                    Text("List Row Background")
                        .listRowBackground(Color.yellow)
                    Text("List Row Separator")
#if os(iOS)
                        .listRowSeparator(.hidden, edges: .top)
#endif
                    
                    Text("List Row Separator Tint")
#if os(iOS)
                        .listRowSeparatorTint(.blue, edges: .bottom)
                        .listRowSeparatorTint(.red, edges: .top)
#endif
                    Text("?")
                }
                .listRowInsets(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 0))
                .listRowBackground(Color.white)
                
                Section() {
                    Text("One")
                    Text("Two")
                }.listRowInsets(.init(top:0, leading:60, bottom: 0, trailing: 0))
                
                Section() {
                    Text("Custom Header")
                } header: {
                    CustomHeaderView(title: "TEST", imageName: "star")
                }
            }
            .listRowInsets(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 0))
            //list에 listRowInset을 지정할 수 없다. list 내부에 있어야 의미가 있다.
            
        }
    }
}

struct CustomizingList_Previews: PreviewProvider {
    static var previews: some View {
        CustomizingList()
    }
}
