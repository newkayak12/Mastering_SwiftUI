import SwiftUI

/**
 ObservableObject :  class protocol => 뷰에서 인스턴스를 감시할 수 있다. ==> ViewModel같은 경우
 ObservedObject : propertyWrapper => 속성을 선언할 때 사용 하는  ==> ObservableObject를 observing
 Published : ObservablableObject에서 사용 ==> 속성을 선언 ==> 이 녀석을 감시할 수 있따.
 */
struct ObservableList: View {
    @State private var value: String = ""
    @ObservedObject var viewModel: ViewModel = ViewModel()
    
    var body: some View {
        VStack {
            Text(viewModel.title)
                .font(.largeTitle)
            
            Button {
                viewModel.title = "TITLE"
            } label: {
                Text("Update Title")
            }
            .padding()
            
            HStack {
                TextField("Value", text: $value)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button {
                    viewModel.list.insert(value, at: 0)
                    value = ""
                //view 가 업데이트되면 @ObservedObject 선언 안해도 전체 렌더가 발생해서 업데이트 될 수도 있구나
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

struct ObservableList_Previews: PreviewProvider {
    static var previews: some View {
        ObservableList()
    }
}
