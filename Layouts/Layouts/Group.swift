
import SwiftUI

struct Group_Tutorials: View {
    var body: some View {
        VStack { //ViewBuilder가 자식 최대 10개 -> 이를 극복하려 Group
                Group {
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                }.padding()
            
            Spacer().frame(height: 30)
            
                Group {
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                }.font(.body)
                
        }
    }
}

struct Group_Previews: PreviewProvider {
    static var previews: some View {
        Group_Tutorials()
    }
}
