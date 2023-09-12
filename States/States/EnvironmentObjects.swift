

import SwiftUI

struct EnvironmentObjects_Tutorials: View {
    @State private var value: String = ""
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            HStack {
                TextField("Value", text: $value)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button {
                    viewModel.list.append(value)
                    value = ""
                } label: {
                    Text("Add To List")
                }
                .padding()
            }
            
            List(viewModel.list, id: \.self) { item in
                Text(item)
            }
        }
    }
}

struct EnvironmentObjects_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjects_Tutorials()
            .environmentObject(ViewModel())//이러면 child나 다른 view로 자동 공유된다.
    }
}
