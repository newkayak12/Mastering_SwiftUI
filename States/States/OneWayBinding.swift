import SwiftUI

struct OneWayBinding: View {
    @State private var text: String = "Hello, SwiftUI"
    //구조체와 메모리 공간이 분리된다. => 값을 변경할 수 있다.
    var body: some View {
       VStack(spacing: 70) {
          Text(text)
             .font(.largeTitle)
          
           Button {
               text = "Bye, UIKit"
           } label: {
               Text("Update")
           }
           .padding()
       }
    }
}

struct OneWayBinding_Previews: PreviewProvider {
    static var previews: some View {
        OneWayBinding()
    }
}
